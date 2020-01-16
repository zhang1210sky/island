<?php
namespace app\index\controller;

use think\Controller;
use app\admin\model\Act_notice as ActNotice;
use app\admin\model\Publish_act as Publish;
use app\admin\model\Glimpse as Glimpse;
use app\admin\model\Category as Category;
use app\admin\model\Mail_list as Mailist;
use app\index\model\Act_goods as ActGoods;
use app\index\model\Glimpse_goods as Glimpsegoods;
use app\index\model\Act_collection as ActCollection;
use app\admin\model\My_act as MyAct;


class Activity extends Controller
{
    public function index()
    {
        $aa = Publish::select();
        dump($aa);
    }
    //活动通告栏
    public function board()
    {
        $info = ActNotice::get(1);

        return showApiJson(0,'活动通告栏',$info);
    }
    //物业通告栏
    public function property()
    {
        $info = ActNotice::get(2);

        return showApiJson(0,'物业通告栏',$info);
    }
    //活动列表
    public function act_list()
    {
        $index = new Index();
        $user_id = $index->UserId();
        if(!is_int($user_id)){
            return showApiJson(9,$user_id);
        }
        $good = ActGoods::where('user_id',$user_id)->select();
        $goods = [];
        foreach ($good as $v){
            $goods[] = $v['act_id'];
        }
        $list = Publish::where('is_hide',0)->order(['is_hot desc','end_time desc'])->select();
        foreach ($list as &$value){
            $end_time = strtotime($value['end_time']);
            if(time()>$end_time){
                $value['new_state'] = 0;
            }else{
                $value['new_state'] = 1;
            }
            $value['pa_img'] = str_replace('\\', '/', $value['pa_img']);
            if(in_array($value['id'],$goods)){
                $value['is_goods'] = 1;
            }else{
                $value['is_goods'] = 0;
            }
        }
       
        return showApiJson(0,'活动列表',$list);
    }
    //活动详情
    public function act_details()
    {
        //取出用户所有收藏
        $id = input('get.act_id');
        $index = new Index();
        $user_id = $index->UserId();
        if(!is_int($user_id)){
            return showApiJson(9,$user_id);
        }
        //判断是否为收藏
        $list = ActCollection::where('user_id',$user_id)->select();
        $coll = [];
        foreach ($list as $value){
            $coll[] = $value['act_id'];
        }
        $info = Publish::get($id);
        if(!$info){
            return showApiJson(2,'该活动已删除,请删除',$info);
        }
        //判断是否为收藏
        if(in_array($info['id'],$coll)){
            $info['is_collect'] = 1;
        }else{
            $info['is_collect'] = 0;
        }
        if(isset($info['pa_img'])){
            $info['pa_img'] = str_replace('\\', '/', $info['pa_img']);
        }

        //活动判断
        $act_info = Publish::where('id',$id)->find();
        //活动结束
        // if(!$act_info['state']){
        //     return showApiJson(1,'活动已结束',$info);
        // }
        //报名时间已结束
        $end_time = strtotime($act_info['end_time']);
        if($end_time){
            if(time()>$end_time){
                return showApiJson(1,'报名时间已结束',$info);
            }
        }
        //人数限制
        if($act_info['p_number']){
            $num = MyAct::field('id')->where('act_id',$id)->select();
            $count = count($num);
            if( $count >= $act_info['p_number'] ){
                return showApiJson(1,'报名人数已满',$info);
            }
        }
        return showApiJson(0,'活动详情',$info);
    }
    //掠影列表
    public function glimpse_list()
    {
        $index = new Index();
        $user_id = $index->UserId();
        if(!is_int($user_id)){
            return showApiJson(9,$user_id);
        }
        $good = Glimpsegoods::where('user_id',$user_id)->select();
        $goods = [];
        foreach ($good as $v){
            $goods[] = $v['glimpse_id'];
        }
        $list = Glimpse::order('glimpse_time desc')->select();
        foreach ($list as &$value){
            $value['glimpse_img'] = str_replace('\\', '/', $value['glimpse_img']);
            if(in_array($value['id'],$goods)){
                $value['is_goods'] = 1;
            }else{
                $value['is_goods'] = 0;
            }
        }
        //dump($list);
        return showApiJson(0,'详情列表',$list);
    }
    //掠影详情
    public function glimpse_details()
    {
        $id = input('get.glimpse_id');

        $info = Glimpse::get($id);
        if(!$info){
            return showApiJson(1,'没有获取到掠影详情');
        }

        $info['glimpse_img'] = str_replace('\\', '/', $info['glimpse_img']);

        $info['content'] = str_replace('../', '', $info['content']);
        $info['content'] = str_replace('&nbsp;', ' ', $info['content']);
        return showApiJson(0,'掠影详情',$info);
    }
    //获取物业服务信息
    public function services()
    {
        $list = Category::where('parent_id',3)->where('is_show',0)->select();

        return showApiJson(0,'物业服务列表',$list);
    }
    //便民通讯录
    public function mail_list()
    {
        $page = input('get.page');

        $limit = input('get.limit');

        $order = '';
        $where = [];
        $type = input('get.m_cart');
        if(isset($type)){
            $where[] = ['m_cart','=',$type];
            if($type==2){
                $order = 'hos_cart asc';
            }
        }
        $keyword = input('get.keyword');
        if(isset($keyword)){
            $where[] = ['title','like',"%{$keyword}%"];
        }
        $count = Mailist::where($where)->count();
        $list = Mailist::where($where)->order('m_cart asc')->order($order)->page($page,$limit)->select();

        foreach ($list as &$value){
            $value['mail_img_thumb'] = str_replace('\\', '/', $value['mail_img_thumb']);
        }
        return showApiJsonPage(0,'通讯录列表',$count,$list);
    }


}
