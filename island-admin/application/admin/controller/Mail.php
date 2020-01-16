<?php
namespace app\admin\controller;

use app\admin\model\Mail_list as MailList;
use app\admin\model\Mail_img as MailImg;

class Mail extends Base
{
    //upload
    public function upload()
    {
        $upload = new Upload();

        $img = $upload->upload_mail_thumb();

        $data['img'] = $img['n_img'];
        $data['mail_img_thumb'] = $img['n_thumb_lit'];

        $res = MailImg::create($data);

        if(!$res){
            return showApiJson(1,'文件上传失败');
        }

        return showApiJson(0,$res['id'],['img'=> $img['n_img'],'img_thumb'=>$img['n_thumb_lit']]);
    }

    public function index()
    {
        $info = input('get.');

        $where = [];
        if(isset($info['key']['keywords']) && !empty($info['key']['keywords'])){
            $keywords = $info['key']['keywords'];
            $where[] = ['title','like',"%{$keywords}%"];
        }
        if(isset($info['key']['m_cart'])){
            $m_cart = $info['key']['m_cart'];
            if($m_cart!=""){
                $where[] = ['m_cart','=',$m_cart];
            }
        }

        $page = input('get.page');

        $limit = input('get.limit');

        $all = MailList::where($where)->select();

        $count = count($all);

        $list = MailList::where($where)->page($page,$limit)->select();

        return showApiJsonPage(0,'成功',$count,$list);
    }

    public function add()
    {
        if($this->request->isPost()){

            $info = input('post.');

            $res = MailList::create($info);

            if(!$res){
                return showApiJson(0,'商户信息添加失败');
            }
            MailImg::destroy($res['ma_img_id']);

            return showApiJson(1,'商户信息添加成功');
        }
    }

    public function delete()
    {
        $id = input('get.id');

        $a = MailList::get($id);

        if(isset($a['mail_img'])){
            $mail_img = str_replace('\\','/',$a['mail_img']);
            if(is_file($mail_img)){
                unlink($mail_img);
            }
        }
        if(isset($a['mail_img_thumb'])){
            $mail_img_thumb = str_replace('\\','/',$a['mail_img_thumb']);
            if(is_file($mail_img_thumb)){
                unlink($mail_img_thumb);
            }
        }

        $res = MailList::destroy($id);

        if($res){
            return showApiJson(1,'删除成功');
        }else{
            return showApiJson(0,"删除失败");
        }

    }

    public function edit()
    {
        if($this->request->isPost()){

            $info = input('post.');

            MailList::update($info);

            return showApiJson(1,"通讯录修改成功");

        }else{

            $id = input('get.id');

            $info = MailList::get($id);

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

        $a = MailList::get($id);

        if(isset($a['mail_img'])){
            $mail_img = str_replace('\\','/',$a['mail_img']);
            if(is_file($mail_img)){
                unlink($mail_img);
            }
        }
        if(isset($a['mail_img_thumb'])){
            $mail_img_thumb = str_replace('\\','/',$a['mail_img_thumb']);
            if(is_file($mail_img_thumb)){
                unlink($mail_img_thumb);
            }
        }

        $upload = new Upload();

        $img = $upload->upload_mail_thumb();

        $info['id'] = $id;
        $info['mail_img'] = $img['n_img'];
        $info['mail_img_thumb'] = $img['n_thumb_lit'];

        $res = MailList::update($info);

        if($res){
            return showApiJson(0,'更新图片成功');
        }else{
            return showApiJson(1,"更新图片失败");
        }

    }

    //导出数据表格
//    public function export()
//    {
//
//        $header = ['姓名', '电话','报名时间'];
//
//        $id = input('get.id');
//
//        $list = MyAct::where('act_id',$id)->select();
//
//        $data = [];
//        foreach ($list as $key => $value){
//            $data[$key][0] = $value['name'];
//            $data[$key][1] = $value['phone'];
//            $data[$key][2] = $value['time'];
//
//        }
//        exportExcel($header, $data, 'export', './', true);
//    }



}