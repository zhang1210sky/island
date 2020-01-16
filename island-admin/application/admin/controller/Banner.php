<?php
namespace app\admin\controller;

use app\admin\model\Banner  as AdBanner;


class Banner extends Base
{
    public function index()
    {
        $res = AdBanner::select();

        return showApiJson(0,'banner列表',$res);
    }

    public function add()
    {
        if($this->request->isPost()){

            //判断图片，不能添加超过5张
            $banners = AdBanner::all();
            if(count($banners)>=5){
                return json_encode(array('code'=>1,'msg'=>'图片添加超过上限,不能再添加'));
            }
            // 获取上传的文件
            $banner_file = new Upload();
            $img = $banner_file->upload_edit();
            //存入数据库
            $info['banner_img'] = $img;
            $result = AdBanner::create($info);
            if($result){
                exit(json_encode(array('code'=>0,'msg'=>'图片上传成功')));
            }else{
                exit(json_encode(array('code'=>1,'msg'=>'图片保存数据库失败')));
            }
        }
    }
    public function edit()
    {
        if($this->request->isPost()){

            $info = input('post.');

            AdBanner::update($info);

            return showApiJson(1,"通讯录修改成功");

        }else{

            $id = input('get.id');

            $info = AdBanner::get($id);

            return showApiJson(1,'通讯录修改页面数据',$info);
            //$this->assign('info',$info);
            //$this->assign('id',$id);

            //return $this->fetch();

        }
    }
    //修改图片
    public function img_edit()
    {
        $id = input('get.id');

        $a = AdBanner::get($id);

        if(isset($a['banner_img'])){
            $banner_img = str_replace('\\','/', $a['banner_img']);
            if(is_file($banner_img)){
                unlink($banner_img);
            }
        }

        $upload = new Upload();

        $img = $upload->upload_edit();
        $info['id'] = $id;
        $info['banner_img'] = $img;

        $res = AdBanner::update($info);

        if($res){
            return showApiJson(0,'更新图片成功');
        }else{
            return showApiJson(1,"更新图片失败");
        }

    }
    public function url_edit()
    {
        $info = input('post.data');

        AdBanner::update($info);
        return showApiJson(1,'更新成功');
    }

    //删除
    public function delete()
    {
        $id = input('get.id');
        $banner = AdBanner::get($id);
        if(isset($banner['banner_img'])){
            $banner_img = str_replace('\\','/', $banner['banner_img']);
            if(is_file($banner_img)){
                unlink($banner_img);
            }
        }

        $res = AdBanner::destroy($id);
        if($res){
            return showApiJson(1,"删除banner图片成功");
        }else{
            return showApiJson(0,"删除banner图片失败");
        }
    }

}
