<?php
namespace app\admin\controller;

use app\admin\model\Feedback as FeBack;

class Feedback extends Base
{

     public function index()
     {
         $page = input('get.page');

         $limit = input('get.limit');

         $all = FeBack::all();

         $count = count($all);

         $list = FeBack::order('time','desc')->page($page,$limit)->select();

         return showApiJsonPage(0,'反馈列表',$count,$list);
     }

     public function delete()
     {
        $id = input('get.id');

        FeBack::destroy($id);

        return showApiJson(0,'反馈信息删除成功');
     }


}