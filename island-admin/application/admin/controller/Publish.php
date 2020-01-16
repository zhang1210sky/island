<?php
namespace app\admin\controller;


use app\admin\model\Publish_act as Publish_act;
use app\admin\model\My_act as MyAct;
use app\admin\model\Publish_img as PublishImg;
use app\index\model\Act_collection as ActCollection;

class Publish extends Base
{
    //upload
    public function upload()
    {
        $upload = new Upload();

        $img = $upload->upload_edit();

        $data['img'] = $img;

        $res = PublishImg::create($data);

        if(!$res){
            return showApiJson(1,'文件上传失败');
        }

        return showApiJson(0,$img,$res['id']);
    }
    //获取报名列表
    public function sign()
    {
        $info = input('get.');

        $where = [];

        if(isset($info['key']['keyword'])){
            $keyword = $info['key']['keyword'];
            $where[] = ['name|phone','like',"%{$keyword}%"];
        }
        $page = input('get.page');

        $limit = input('get.limit');

        $id = input('get.id');

        $act_all = MyAct::where('act_id',$id)->select();

        $count = count($act_all);

        $list = MyAct::where($where)->where('act_id',$id)->page($page,$limit)->select();

        return showApiJsonPage(0,'报名人数详情',$count,$list);

    }
    //显示活动题目
    public function act_title()
    {
        $id = input('get.id');

        $info = Publish_act::get($id);

        return showApiJson(1,'活动主题',$info);
    }
    //更改报名状态
    public function state()
    {
        $state = input('get.state');

        $id = input('get.id');

        if($state==1){
            $info['state'] = 0;
            $info['id'] = $id;
            Publish_act::update($info);
            return showApiJson(1,"活动已设置为结束状态",0);
        }
        if($state==0){
            $info['state'] = 1;
            $info['id'] = $id;
            Publish_act::update($info);
            return showApiJson(1,"活动已开启",1);
        }

    }

    public function index()
    {
        $page = input('get.page');

        $limit = input('get.limit');

        $all = Publish_act::all();

        $list = Publish_act::page($page,$limit)->select();

        $count = count($all);

        return showApiJsonPage(0,'成功',$count,$list);
    }

    public function add()
    {
        if($this->request->isPost()){

            $info = input('post.');

            $res = Publish_act::create($info);

            if(!$res){
                return showApiJson(0,'商户信息添加失败');
            }
            PublishImg::destroy($res['pa_img_id']);

            return showApiJson(1,'商户信息添加成功');
        }
    }

    public function delete()
    {
        $id = input('get.id');

        $a = Publish_act::get($id);

        if(isset($a['pa_img'])){
            $a['pa_img'] = str_replace('\\','/',$a['pa_img']);
            if(is_file($a['pa_img'])){
                unlink($a['pa_img']);
            }
        }

        $res = Publish_act::destroy($id);
        if($res){
            //删除所有底下报名的人
            MyAct::where('act_id',$id)->delete();
            //删除所有这个活动的收藏
            ActCollection::where('act_id',$id)->delete();
            return showApiJson(1,'删除成功');
        }else{
            return showApiJson(0,"删除失败");
        }

    }

    public function edit()
    {
        if($this->request->isPost()){

            $info = input('post.');

            Publish_act::update($info);

            return showApiJson(1,"活动修改成功");

        }else{

            $id = input('get.id');

            $info = Publish_act::get($id);

            return showApiJson(1,'活动修改页面数据',$info);
            //$this->assign('info',$info);
            //$this->assign('id',$id);

            //return $this->fetch();

        }
    }
    //修改图片
    public function img_edit()
    {
        $id = input('get.id');

        $a = Publish_act::get($id);

        if(isset($a['pa_img'])){
            $a['pa_img'] = str_replace('\\','/',$a['pa_img']);
            if(is_file($a['pa_img'])){
                unlink($a['pa_img']);
            }
        }



        $upload = new Upload();

        $img = $upload->upload_edit();
        $info['id'] = $id;
        $info['pa_img'] = $img;

        $res = Publish_act::update($info);

        if($res){
            return showApiJson(0,'更新图片成功');
        }else{
            return showApiJson(1,"更新图片失败");
        }

    }

    //导出数据表格
    public function export()
    {

        $header = ['姓名', '电话','报名时间'];

        $id = input('get.id');

        $list = MyAct::where('act_id',$id)->select();

        $data = [];
        foreach ($list as $key => $value){
            $data[$key][0] = $value['name'];
            $data[$key][1] = $value['phone'];
            $data[$key][2] = $value['time'];

        }
        exportExcel($header, $data, 'export', './', true);
    }

    //删除报名信息
    public function delete_sign()
    {
        $id = input('get.id');

        MyAct::destroy($id);

        return showApiJson(1,'删除报名信息成功');
    }

}