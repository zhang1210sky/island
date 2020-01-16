<?php
namespace app\admin\controller;

use app\admin\model\Role_rule as RoleRule;
use app\admin\model\Rule as Rule;
use think\facade\Cache;
class Menu extends Base
{
    //显示权限菜单
    public function index_xxx()
    {
        //$menu = $this->getCateTree();
        //$this->assign('menu',$menu);
        return $this->fetch();
    }

    public function index()
    {

        $menu = $this->getCateTree();

        $menu_sort = [];
        foreach ($menu as $key => $value){
            if($value['parent_id'] == 0){
                $menu_sort[] = $value;
                foreach ($menu as $k => $v){
                    if($v['parent_id']==$value['id']){
                        $menu_sort[] = $v;
                        foreach ($menu as $k2 => $v2){
                            if($v2['parent_id']==$v['id']){
                                $menu_sort[] = $v2;
                            }
                        }
                    }
                }
            }
        }

        foreach ($menu_sort as $k3 => &$v3){
            $v3['rule_name'] = $v3['str'].$v3['rule_name'];
            if($v3['is_show']==1){
                $v3['is_show'] = "显示在左侧菜单栏";
            }else{
                $v3['is_show'] = "只作为操作节点";
            }
        }
        return showApiJson(0,'菜单',$menu_sort);

    }
    //添加权限菜单
    public function add()
    {

        if($this->request->isPost()){
            $info = input('post.');
            $result = Rule::create($info);
            Cache::rm('rules');
            Cache::rm('all');
            if($result){
                return showApiJson(1,"添加菜单成功");
            }else{
                return showApiJson(0,"添加菜单失败");
            }
        }else{

            $list = $this->getCateTree();

            return showApiJson(0,'菜单分类列表',$list);

        }
    }
    //修改菜单权限
    public function edit()
    {
        if($this->request->isPost()){
            $info = input('post.');
            $result = Rule::update($info);
            Cache::rm('rules');
            Cache::rm('all');
            if($result){
                return showApiJson(1,"修改菜单成功");
            }else{
                return showApiJson(0,"修改菜单失败");
            }
        }else{
            $id = input('get.id');
            $data = Rule::where('id',$id)->find();

            return showApiJson(0,'菜单修改',$data);
//            $this->assign('data',$data);
//
//            $list = $this->getCateTree();
//            $this->assign('list',$list);
//            return $this->fetch();
        }
    }

    //删除权限菜单
    public function delete()
    {

        $id = input('get.id');
        //如果有菜单地下有子菜单，则不允许删除
        $sonMenu = Rule::where('parent_id',$id)->find();
        if($sonMenu){
            return showApiJson(0,"有子菜单存在，不允许删除");
        }
        //
        RoleRule::where('rule_id',$id)->delete();
        $result = Rule::destroy($id);
        Cache::rm('rules');
        Cache::rm('all');
        if($result){
            return showApiJson(1,"删除权限菜单成功");
        }else{
            return showApiJson(0,"删除权限菜单失败");
        }

    }
    //找出所有子分类
    public function getCateTree()
    {
        //可以优化 只查出对应的字段信息
        $data = Rule::select();
        $list = $this->getTree($data);
        return $list;
    }
    //格式化分类信息
    public function getTree($info,$id=0,$lev=0){
        foreach ($info as &$value){
            if($value['parent_id']==$id){
                $value['lev'] = $lev;
                //替换空格
                if($lev == 0)
                {
                    $value['str'] = str_repeat('',$value['lev']);
                }
                elseif($lev == 2)
                {
                    $value['str'] = '&emsp;&emsp;&emsp;&emsp;';
                }
                elseif($lev == 3)
                {
                    $value['str'] = '&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;';
                }
                else
                {
                    $value['str'] = '&emsp;&emsp;';
                }

                $this->getTree($info,$value['id'],$lev+1);
            }
        }
        return $info;
    }

}
