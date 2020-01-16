<?php
namespace app\index\controller;

use think\Controller;
use app\admin\model\Category as Category;
use app\admin\model\Banner as Banner;
use app\admin\model\Activity as Activity;
use app\admin\model\Cart as Cart;
use app\admin\model\Navigation as Navigation;
use app\admin\model\Navigation_img as NavigationImg;
use app\index\model\Collection as Collection;
use app\admin\model\Cart_area as CartArea;

class Api extends Controller
{
    //首页列表
    public function index()
    {
        $list = Category::where('parent_id',0)->where('is_show',0)->order('order','asc')->select();

        return showApiJson(0,'首页列表',$list);
    }
    //首页banner图片
    public function banner()
    {
        $list = Banner::select();

        foreach ($list as &$value){
            $value['banner_img'] = str_replace('\\', '/', $value['banner_img']);
        }

        return showApiJson(0,'banner',$list);
    }
    //首页社区咨询列表
    public function community()
    {
        $list = Activity::where('is_hide',0)->order('is_hot','desc')->order('a_time','desc')->limit(3)->select();
        foreach ($list as &$value){
            $time = strtotime($value['a_time']);
            $value['a_time'] = date('Y-m-d',$time);
            $content = strip_tags($value['content']);
            $content = str_replace('&nbsp;', ' ', $content);
            $content = mb_substr($content,0,15);
            $content_new = mb_strstr($content,' ',true);
            if($content_new){
                $value['s_title'] = $content_new;
            }else{
                $value['s_title'] = $content;
            }

        }
        return showApiJson(0,'3条社区咨询',$list);
    }
    //全都岛居资讯列表
    public function community_list()
    {
        $page = input('get.page');

        $limit = input('get.limit');

        $all = Activity::where('is_hide',0)->select();
        $count = count($all);
        $list = Activity::where('is_hide',0)->order('is_hot','desc')->order('a_time','desc')->page($page,$limit)->select();
        foreach ($list as &$value){
            $time = strtotime($value['a_time']);
            $value['a_time'] = date('Y-m-d',$time);
            $content = strip_tags($value['content']);
            $content = str_replace('&nbsp;', ' ', $content);
            $content = mb_substr($content,0,15);
            $content_new = mb_strstr($content,' ',true);
            if($content_new){
                $value['s_title'] = $content_new;
            }else{
                $value['s_title'] = $content;
            }
        }

        return showApiJsonPage(0,'全部社区咨询',$count,$list);
    }
    //岛居咨询详情
    public function community_details()
    {
        $id = input('get.id');
        $data = Activity::get($id);
        if(!$data){
            return showApiJson(1, '没有获取到岛居咨询详情');
        }

        $data['content'] = str_replace('../', '', $data['content']);
        $data['content'] = str_replace('&nbsp;', ' ', $data['content']);

        return showApiJson(0, '岛居咨询详情', $data);
    }

    //岛居生活列表
    public function island()
    {

        $list = Category::where('parent_id',1)->where('is_show',0)->order('order','asc')->select();

        return showApiJson(0,'岛居生活列表',$list);

    }
    //社区商业首页
    public function business()
    {
        $list = Cart::where('parent_id',0)->select();

        return showApiJson(0,'社区商业列表',$list);
    }
    public function type_list()
    {
        $id = input('get.cart_id');

        $list = Cart::where('parent_id',$id)->order('sort asc')->select();

        return showApiJson(0,'商业类型列表',$list);
    }
    //社区商业列表
    public function b_list()
    {

        $where = [];
        $b_cart = input('get.b_cart');
        if(isset($b_cart) && !empty($b_cart)){
            $where[] = ['b_cart','=',$b_cart];
        }
        $b_type = input('get.b_type');
        if(isset($b_type) && !empty($b_type)){
            $where[] = ['b_type','=',$b_type];
        }
        $area = input('get.area');
        if(isset($area) && !empty($area)){
            $where[] = ['area','=',$area];
        }
        $keyword = input('get.keyword');
        if(isset($keyword)){
            $where[] = ['name','like',"%{$keyword}%"];
        }

        $page = input('get.page');

        $limit = input('get.limit');

        $all = Navigation::where($where)->where('is_hide',0)->select();;

        $count = count($all);

        $b_sort = input('get.b_sort');
        if($b_sort){
            $list = Navigation::where($where)->where('is_hide',0)->page($page,$limit)->order(['is_hot','sort'=>'desc'])->select();
            $state = true;
        }else{
            $list = Navigation::where($where)->where('is_hide',0)->page($page,$limit)->order('sort desc')->select();
            $state = false;
        }
        //获取用户id coll 收藏列表
        $index = new Index();
        $user_id = $index->UserId();//$index->UserId();
        if(!is_int($user_id)){
            return showApiJson(9,$user_id);
        }
        $res = Collection::field('bus_id')->where('user_id',$user_id)->select();
        $coll = [];
        foreach ($res as $value){
            $coll[] = $value['bus_id'];
        }
        ///////
        foreach ($list as &$value){
            $img = NavigationImg::where('n_id',$value['id'])->order('id asc')->find();
            $value['img'] = str_replace('\\', '/', $img['n_thumb_lit']);;

            $cart = Cart::get($value['b_type']);
            $value['type_name'] = $cart['cart_name'];
            if(in_array($value['id'],$coll)){
                $value['is_collect'] = 1;
            }else{
                $value['is_collect'] = 0;
            }

        }

        return showApiJsonPageState(0,'商业列表',$state,$count,$list);
    }
    //社区商业详情
    public function details()
    {
        $id = input('get.id');

        $info = Navigation::get($id);
        if(!$info){
            return showApiJson(1,'没有获取到详情页');
        }
        $img_list = NavigationImg::where('n_id',$id)->select();
        $img = [];
        foreach ($img_list as $value){
            $img[] = str_replace('\\', '/', $value['n_thumb_big']);;
        }
        $type = Cart::where('id',$info['b_type'])->find();
        $info['b_type'] = $type['cart_name'];
        $info['img'] = $img;

        return showApiJson(0,'详情页',$info);
    }
    //物业通告栏
    public function cart_area()
    {
        $list = CartArea::select();

        return showApiJson(0,'区域列表',$list);
    }

}