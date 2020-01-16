<?php

namespace app\admin\controller;

class Upload extends Base
{
    /**
     * 图片上传
     * @return string
     */
    public function upload_file(){
        //上传图片
        $file = request()->file('file'); // 获取上传的文件
        if(empty($file)){
            exit(json_encode(array('code'=>1,'msg'=>'未上传图片')));
        }
        // 判断文件是否合法
        $upload_config = ['size' => 6 * 1024 * 1024, 'ext' => 'jpeg,jpg,png,gif'];
        // 移动文件到指定目录 没有则创建
        $upload_path = ROOT_PATH . 'public' . DS . 'uploads';
        $info = $file->validate($upload_config)->move($upload_path);
        //拼接文件位置
        $img = 'uploads/'.$info->getSaveName();
        return showApiJson(0,$img);
    }

    public function upload_edit(){
        //上传图片
        $file = request()->file('file'); // 获取上传的文件
        if(empty($file)){
            exit(json_encode(array('code'=>1,'msg'=>'未上传图片')));
        }
        // 判断文件是否合法
        $upload_config = ['size' => 6 * 1024 * 1024, 'ext' => 'jpeg,jpg,png,gif'];
        // 移动文件到指定目录 没有则创建
        $upload_path = ROOT_PATH . 'public' . DS . 'uploads';
        $info = $file->validate($upload_config)->move($upload_path);
        //拼接文件位置
        $img = 'uploads/'.$info->getSaveName();
        return $img;
    }
    public function upload_edit_thumb()
    {
        //上传图片
        $file = request()->file('file'); // 获取上传的文件
        if(empty($file)){
            exit(json_encode(array('code'=>1,'msg'=>'未上传图片')));
        }
        // 判断文件是否合法
        $upload_config = ['size' => 6 * 1024 * 1024, 'ext' => 'jpeg,jpg,png,gif'];
        // 移动文件到指定目录 没有则创建
        $upload_path = ROOT_PATH . 'public' . DS . 'uploads';

        $info = $file->validate($upload_config)->move($upload_path);

        $list = [];
        if($info){
            $path = $info->getSaveName();
            $name = $info->getFilename();
            $goods_img = "uploads/" . $path;
            $data = date('Ymd',time());

            $image1 = \think\Image::open($goods_img);

            $image1->thumb(290, 180,\think\Image::THUMB_CENTER)->save("uploads/{$data}/thumb170_" . $name);
            $image2 = \think\Image::open($goods_img);
            $image2->thumb(750,400,\think\Image::THUMB_CENTER)->save("uploads/{$data}/thumb750_"  . $name);

            $n_thumb_big = "uploads/{$data}/thumb750_" . $name;
            $n_thumb_lit = "uploads/{$data}/thumb170_"  . $name;
            $list=array(
                'n_img'=>$goods_img,
                'n_thumb_big'=>$n_thumb_big,
                'n_thumb_lit'=>$n_thumb_lit
            );
        }
       return $list;
    }

    public function upload_mail_thumb()
    {
        //上传图片
        $file = request()->file('file'); // 获取上传的文件
        if(empty($file)){
            exit(json_encode(array('code'=>1,'msg'=>'未上传图片')));
        }
        // 判断文件是否合法
        $upload_config = ['size' => 6 * 1024 * 1024, 'ext' => 'jpeg,jpg,png,gif'];
        // 移动文件到指定目录 没有则创建
        $upload_path = ROOT_PATH . 'public' . DS . 'uploads';

        $info = $file->validate($upload_config)->move($upload_path);

        $list = [];
        if($info){
            $path = $info->getSaveName();
            $name = $info->getFilename();
            $goods_img = "uploads/" . $path;
            $data = date('Ymd',time());

            $image1 = \think\Image::open($goods_img);

            $image1->thumb(180, 180,\think\Image::THUMB_CENTER)->save("uploads/{$data}/thumb180_" . $name);

            $n_thumb_lit = "uploads/{$data}/thumb180_"  . $name;
            $list=array(
                'n_img'=>$goods_img,
                'n_thumb_lit'=>$n_thumb_lit
            );
        }
        return $list;
    }

}