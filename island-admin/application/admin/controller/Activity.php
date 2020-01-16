<?php
namespace app\admin\controller;


use app\admin\model\Activity as Active;
use app\admin\model\Act_notice as ANotice;
use app\admin\model\Act_ueditor_img as ActUeditor;

class Activity extends Base
{

    public function index()
    {
        $page = input('get.page');

        $limit = input('get.limit');

        $all = Active::all();

        $list = Active::page($page,$limit)->select();

        $count = count($all);

        return showApiJsonPage(0,'成功',$count,$list);
    }

    public function add()
    {
        if($this->request->isPost()){

            $info = input('post.');

            //把../uploads 换成./uploads
            //$info['content'] = str_replace('../uploads','./uploads', $info['content']);

            $res = Active::create($info);

            if(!$res){
                return showApiJson(0,'商户信息添加失败');
            }

            return showApiJson(1,'商户信息添加成功');

        }else{

            return $this->fetch();

        }
    }

    public function delete()
    {

        $id = input('get.id');
        $list = ActUeditor::where('u_act_id',$id)->select();
        foreach ($list as $value){
             if(isset($value['u_img'])){

                 $link = substr($value['u_img'],'3');
                 $link = str_replace('\\','/', $link);
                 if(is_file($link)){
                     unlink($link);
                 }

             }
        }
        ActUeditor::where('u_act_id',$id)->delete();
        $res = Active::destroy($id);
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
/*            preg_match_all( '/<img.*?src=[\"|\']?(.*?)[\"|\']?\s.*?>/i', $info['content'], $match);*/
//            $up = $match[1];
//            $list = ActUeditor::where('u_act_id',$info['id'])->select();
//            foreach ($list as $value){
//                    if(!in_array($value['u_img'],$up)){
//                        if(isset($value['u_img'])){
//                            $link = substr($value['u_img'],'3');
//                            $link = str_replace('\\','/', $link);
//                            if(is_file($link)){
//                                unlink($link);
//                            }
//                        }
//                        ActUeditor::destroy($value['id']);
//                    }
//            }
//            foreach ($up as $v){
//                $add['u_act_id'] = $info['id'];
//                ActUeditor::where('u_img',$v)->update($add);
//            }

            Active::update($info);

            return showApiJson(1,"岛居资讯更新成功");

        }else{

            $id = input('get.id');

            $info = Active::get($id);

            return showApiJson(1,'更新页面',$info);
            //$this->assign('info',$info);
            //$this->assign('id',$id);

            //return $this->fetch();
        }
    }

    public function notice()
    {
        if($this->request->isPost()){
            $content = input('post.content');
            $property = input('post.property');

            $data['id'] = 1;
            $data['content'] = $content;
            ANotice::update($data);
            $info['id'] = 2;
            $info['content'] = $property;
            ANotice::update($info);

            return showApiJson(1,'修改通告栏成功');
        }else{

            $info = ANotice::select();

            return showApiJson(1,'通告栏',$info);
        }

    }

    public function upload()
    {

        $file = new Upload();
        $img = $file->upload_edit();
        $img = str_replace('\\', '/', $img);
        $info['u_img'] = "../".$img;
        ActUeditor::create($info);
        $data['errno'] = 0;
        $data['data'][] = "https://hdhhd.evergrande.com/".$img;
        return json($data);
    }


}