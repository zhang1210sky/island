<?php
namespace app\admin\controller;


use app\admin\model\Glimpse as Glim;
use app\admin\model\Glimpse_img as GlimpseImg;
use app\admin\model\Role;

class Glimpse extends Base
{
    public function upload()
    {
        $upload = new Upload();

        $img = $upload->upload_edit();

        $data['img'] = $img;

        $res = GlimpseImg::create($data);

        if(!$res){
            return showApiJson(1,'文件上传失败');
        }

        return showApiJson(0,$img,$res['id']);
    }
    public function index()
    {

        $page = input('get.page');

        $limit = input('get.limit');

        $all = Glim::all();

        $list = Glim::page($page,$limit)->select();

        $count = count($all);

        return showApiJsonPage(0,'成功',$count,$list);
    }

    public function add()
    {
        if($this->request->isPost()){

            $info = input('post.');

            $res = Glim::create($info);

            if(!$res){
                return showApiJson(0,'商户信息添加失败');
            }
            GlimpseImg::destroy($res['glimpse_img_id']);

            return showApiJson(1,'商户信息添加成功');
        }
    }

    public function delete()
    {
        $id = input('get.id');

        $a = Glim::get($id);

        preg_match_all( '/<img.*?src=[\"|\']?(.*?)[\"|\']?\s.*?>/i', $a['content'], $match);
        if(isset($match[1])){
            foreach ($match[1] as $images){
                $image = strstr($images,'uploads');
                $image_path = ROOT_PATH.'public/'.$image;
                $image_path = str_replace('\\','/', $image_path);
                if(is_file($image_path)){
                    unlink($image_path);
                }
            }
        }

        if(isset($a['glimpse_img'])){
            $glimpse_img = str_replace('\\','/', $a['glimpse_img']);
            if(is_file($glimpse_img)){
                unlink($glimpse_img);
            }
        }

        $res = Glim::destroy($id);

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

            Glim::update($info);

            return showApiJson(1,"活动修改成功");

        }else{

            $id = input('get.id');

            $info = Glim::get($id);

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

        $a = Glim::get($id);

        if(isset($a['glimpse_img'])){
            $glimpse_img = str_replace('\\','/', $a['glimpse_img']);
            if(is_file($glimpse_img)){
                unlink($glimpse_img);
            }
        }

        $upload = new Upload();

        $img = $upload->upload_edit();
        $info['id'] = $id;
        $info['glimpse_img'] = $img;

        $res = Glim::update($info);

        if($res){
            return showApiJson(0,'更新图片成功');
        }else{
            return showApiJson(1,"更新图片失败");
        }

    }

    public function editor_upload()
    {

        $file = new Upload();
        $img = $file->upload_edit();
        $img = str_replace('\\', '/', $img);

        $data['errno'] = 0;
        $data['data'][] = "https://hdhhd.evergrande.com/".$img;
        return json($data);
    }

}