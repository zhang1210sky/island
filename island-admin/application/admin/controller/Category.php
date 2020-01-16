<?php
namespace app\admin\controller;

use app\admin\model\Category as AdCategory;


class Category extends Base
{
    //更改报名状态
    public function state()
    {
        $state = input('get.state');

        $id = input('get.id');

        if($state==1){
            $info['is_show'] = 0;
            $info['id'] = $id;
            AdCategory::update($info);
            return showApiJson(1,"开启显示",0);
        }
        if($state==0){
            $info['is_show'] = 1;
            $info['id'] = $id;
            AdCategory::update($info);
            return showApiJson(1,"关闭隐藏",1);
        }

    }

    public function index()
    {
        //排序渲染
        $list = AdCategory::all();
        $menu_sort = [];
        foreach ($list as $key => $value){
            if($value['parent_id'] == 0){
                //$value['cname'] = $value['cname'];
                $menu_sort[] = $value;
                foreach ($list as $k => $v){
                    if($v['parent_id']==$value['id']){
                        $v['cname'] = '&emsp;&emsp;'.$v['cname'];
                        $menu_sort[] = $v;
                    }
                }
            }
        }
       // dump($menu_sort);
        return showApiJson(0,'前台分类列表',$menu_sort);

    }

    public function edit()
    {
        $info = input('post.data');
        if(isset($info['cname'])){
            $cname = trim($info['cname']);
            if(empty($cname)){
                return showApiJson(1,"分类名称不能为空");
            }
        }
        if(isset($info['order'])){
            $order = trim($info['order']);

            if(!is_numeric($order) || strlen($order)>3){
                return showApiJson(1,"排序必须为数字且不能超过3位");
            }
        }
        AdCategory::update($info);

        return showApiJson(0,'更新成功');
    }


}
