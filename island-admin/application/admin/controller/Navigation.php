<?php
namespace app\admin\controller;

use app\admin\model\Navigation as Navi;
use app\admin\model\Navigation_img as NavImg;
use app\admin\model\Cart as Cart;
use app\index\model\Collection as Collection;

class Navigation extends Base
{
    //获取子分类下的商业类型 add页面下
    public function get_cart()
    {
        $cart_id = input('post.cart_id');

        $list = Cart::where('parent_id',$cart_id)->select();

        return showApiJson(1,'分类列表',$list);
    }
    //add里面添加图片
    public function upload()
    {
        $upload = new Upload();

        $img = $upload->upload_edit_thumb();

        if(!is_array($img)){
            return showApiJson(1,$img);
        }
        $data['n_img'] = $img['n_img'];
        $data['n_thumb_big'] = $img['n_thumb_big'];
        $data['n_thumb_lit'] = $img['n_thumb_lit'];

        $res = NavImg::create($data);

        if(!$res){
            return showApiJson(1,'文件上传失败');
        }

        return showApiJson(0,$res['id']);
    }


    public function index()
    {
        $info = input('get.');

        $where = [];
        if(isset($info['key']['keywords']) && !empty($info['key']['keywords'])){
            $keywords = $info['key']['keywords'];
            $where[] = ['name','like',"%{$keywords}%"];
        }
        if(isset($info['key']['n_cart'])){
            $n_cart = $info['key']['n_cart'];
            if($n_cart!=""){
                $data = Cart::get($n_cart);
                //顶级分类
                if($data['parent_id']==0){
                    $where[] = ['b_cart','=',$n_cart];
                }else{
                    $where[] = ['b_type','=',$n_cart];
                }
            }
        }

        $page = input('get.page');

        $limit = input('get.limit');

        $all = Navi::where($where)->select();

        $count = count($all);

        $list = Navi::where($where)->page($page,$limit)->select();

        foreach ($list as &$value){
            $info_cart = Cart::where('id',$value['b_cart'])->find();
            $value['b_cart'] = $info_cart['cart_name'];
            $info_type = Cart::where('id',$value['b_type'])->find();
            $value['b_type'] = $info_type['cart_name'];
        }

        return showApiJsonPage(0,'成功',$count,$list);
    }
    //获取分类列表
    public function cart_index()
    {
        $data = Cart::all();

        return showApiJson(0,'分类列表',$data);
    }

    public function add()
    {
        if($this->request->isPost()){

            //$files = $_FILES['file'];
            $info = input('post.');

            $img_ids = $info['navigation_img_id'];

            $info['navigation_img_id'] = implode(',',$info['navigation_img_id']);

//            $address = $info['address'];
//            $addr = $this->address_check($address);
//            if(!$addr){
//                return showApiJson(0,"这不是一个有效的地址 | 今天的接口使用达到上限");
//            }
//            $info['latitude'] = $addr['latitude'];
//            $info['longitude'] = $addr['longitude'];

            $res = Navi::create($info);

            if(!$res){
                return showApiJson(0,'商户信息添加失败');
            }
            foreach ($img_ids as $value){
                $data['id'] = $value;
                $data['n_id'] = $res['id'];
                NavImg::update($data);
            }

            return showApiJson(1,'商户信息添加成功');

        }else{

            return $this->fetch();

        }
    }

    public function delete()
    {
        //先查询所有图片 然后删除
        $id = input('get.id');
        $files = NavImg::where('n_id',$id)->select();
        if($files){
            foreach ($files as $file){
                $file['n_img'] = str_replace('\\','/',$file['n_img']);
                $file['n_thumb_big'] = str_replace('\\','/',$file['n_thumb_big']);
                $file['n_thumb_lit'] = str_replace('\\','/',$file['n_thumb_lit']);
                if(is_file($file['n_img'])){
                    unlink($file['n_img']);
                }
                if(is_file($file['n_thumb_big'])){
                    unlink($file['n_thumb_big']);
                }
                if(is_file($file['n_thumb_lit'])){
                    unlink($file['n_thumb_lit']);
                }
            }
            NavImg::where('n_id',$id)->delete();
        }
        $res = Navi::destroy($id);
        if($res){
            //删除底下所有的商户收藏
            Collection::where('bus_id',$id)->delete();
            return showApiJson(1,'删除成功');
        }else{
            return showApiJson(0,"删除失败");
        }

    }
    public function sort_edit()
    {
        $info = input('post.');
        if(!isset($info['data'])){
            return showApiJson(0,'参数错误');
        }
        if(!is_numeric($info['data']['sort']) || strlen($info['data']['sort'])>9){
            return showApiJson(1,"排序必须为数字且不能超过9位");
        }
        $data['id'] = $info['data']['id'];
        $data['sort'] = $info['data']['sort'];

        Navi::update($data);

        return showApiJson(1,"商户信息更新成功");
    }

    public function edit()
    {
        if($this->request->isPost()){
            $info = input('post.');

            //地图没有显示  暂时关闭
//            $address = $info['address'];
//            $addr = $this->address_check($address);
//            if(!$addr){
//                return showApiJson(0,"这不是一个有效的地址 | 今天的接口使用达到上限");
//            }
//            $info['latitude'] = $addr['latitude'];
//            $info['longitude'] = $addr['longitude'];

            Navi::update($info);

            return showApiJson(1,"商户信息更新成功");
        }else{

            $id = input('get.id');

            $info = Navi::get($id);
            $cart_id = $info['b_cart'];
            $cart_list = Cart::where('parent_id',$cart_id)->select();
            $img_list = NavImg::where('n_id',$id)->order('id asc')->select();
            $info['img_list'] = $img_list;
            $info['cart_list'] = $cart_list;
            return showApiJson(1,'修改数据列表',$info);
        }
    }
    //删除图片
    public function navi_del_img()
    {
        //先更新图片id
        $img_id = input('get.id');
        $navi_id = input('get.navid');

        $info = Navi::get($navi_id);

        $ids_arr = explode(',',$info['navigation_img_id']);
        $arr = array_diff($ids_arr, array($img_id));
        $ids_str = implode(',',$arr);
        $data['id'] = $navi_id;
        $data['navigation_img_id'] = $ids_str;
        Navi::update($data);
        //再删除图片
        $res = NavImg::get($img_id);
        if($res){
            $res['n_img'] = str_replace('\\','/',$res['n_img']);
            $res['n_thumb_big'] = str_replace('\\','/',$res['n_thumb_big']);
            $res['n_thumb_lit'] = str_replace('\\','/',$res['n_thumb_lit']);
            if(is_file($res['n_img'])){
                unlink($res['n_img']);
            }
            if(is_file($res['n_thumb_big'])){
                unlink($res['n_thumb_big']);
            }
            if(is_file($res['n_thumb_lit'])){
                unlink($res['n_thumb_lit']);
            }
            NavImg::destroy($res['id']);
        }

        return showApiJson(0,"删除成功");
    }
    //添加图片
    public function navi_file_insert()
    {
        $n_id = input('get.id');
        if($this->request->isPost()){
            //判断图片，不能添加超过6张
            $count = NavImg::where('n_id',$n_id)->select();
            if(count($count)>=6){
                return showApiJson(1,"图片添加上限为6张,不能再添加");
            }
            // 获取上传的文件
            $upload_file = new Upload();
            $img = $upload_file->upload_edit_thumb();
            if(!is_array($img)){
                return showApiJson(1,$img);
            }
            $info['n_id'] = $n_id;
            $info['n_img'] = $img['n_img'];
            $info['n_thumb_big'] = $img['n_thumb_big'];
            $info['n_thumb_lit'] = $img['n_thumb_lit'];
            $result = NavImg::create($info);
            if($result){
                //更新图片id
                $img_id = $result['id'];
                $data = Navi::get($n_id);
                if($data['navigation_img_id']){
                    $up['navigation_img_id'] = $data['navigation_img_id'].','.$img_id;
                }else{
                    $up['navigation_img_id'] = $img_id;
                }

                $up['id'] = $n_id;
                Navi::update($up);

                return showApiJson(0,'图片保存成功',$result);
            }else{
                return showApiJson(1,'图片保存数据库失败');
            }
        }
    }
    //判断是否为一个有效的地址
    public function address_check11111($address)
    {
        //判断是不是有效的地址
        //$address = "武汉市汉口万科传奇西门";
        //$address = urlencode($address);
        $key = "86a2e2884c958ad39138ed8a2926d344";
        $url = "https://restapi.amap.com/v3/geocode/geo?address={$address}&output=JSON&key={$key}";
        $res = http_get($url);
        if(!$res){
            return false;
        }
        $res = json_decode($res);

        if($res->status==1){
            $info = $res->geocodes[0]->location;
            $info = explode(',',$info);
            $longitude = $info[1];
            $latitude = $info[0];
            return [
                'latitude'=>$latitude,
                'longitude'=>$longitude
            ];
        }else{
            return false;
        }

    }

    public function address_check($address)
    {

        $key = "3UTBZ-BRHCV-Y2RP2-UURCP-DVRHV-WGBT5";
        $url = "https://apis.map.qq.com/ws/geocoder/v1/?address={$address}&key={$key}";
        $res = http_get($url);
        if(!$res){
            return false;
        }
        $res = json_decode($res);

        if($res->status==0){
            $latitude = $res->result->location->lat;
            $longitude = $res->result->location->lng;
            return [
                'latitude'=>$latitude,
                'longitude'=>$longitude
            ];
        }else{
            return false;
        }

    }
}