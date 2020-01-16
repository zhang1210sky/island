<?php
namespace app\admin\controller;

use app\admin\model\Rule as Rule;
use app\admin\model\Role_rule as RoleRule;
use app\admin\model\Role as Role;
use app\admin\model\Admin as AdAdmin;
use app\admin\model\Admin_role as AdAdminRole;
use think\facade\Cache;
use think\Db;

//    <style>
//        .pagination li {display: inline-block;margin-right: -1px;padding: 5px;border: 1px solid #e2e2e2;min-width: 20px;text-align: center;}
//        .pagination li.active {background: #009688;color: #fff;border: 1px solid #009688;}
//        .pagination li a {display: block;text-align: center;}
//    </style>
class Admin extends Base
{
    /**
     * 管理员添加,修改,删除,显示操作
     * @return [type] [description]
     */
    public function edit()
    {
        if($this->request->isPost()){
            $info = input('post.');
            //验证
            $res = AdAdmin::where('name',$info['name'])->find();
            if($res && $info['admin_id']!=$res['id']){
                return showApiJson(0,"该用户名已存在");
            }
            if( $info['password'] != $info['password_confirm'] ){
                return showApiJson(0,"两次密码输入不一样");
            }
            if(empty(trim($info['password']))){
                return showApiJson(0,"密码不允许为空");
            }
            $info['password'] = md5($info['password']);
            //更新
            $info['id'] = $info['admin_id'];
            $user = AdAdmin::update($info);
            if(!$user){
                return showApiJson(0,"更新管理员失败");
            }
            $data['role_id'] = $info['role_id'];
            AdAdminRole::where('admin_id',$info['admin_id'])->update($data);
            return showApiJson(1,"管理员更新成功");
        }else{
            $id = input('get.id');

            $admin = Db::name('admin')
                ->alias('a')
                ->join('admin_role w','a.id = w.admin_id')
                ->join('role c','w.role_id = c.id')
                ->where('w.admin_id',$id)
                ->find();
            return showApiJson(0,'修改用户',$admin);
        }
    }

    public function add()
    {
        if($this->request->isPost()){
            $info = input('post.');
            //验证
            $res = AdAdmin::where('name',$info['name'])->find();
            if($res){
                return showApiJson(0,"该用户名已存在");
            }
            if( $info['password'] != $info['password_confirm'] ){
                return showApiJson(0,"两次密码输入不一样");
            }
            if(empty(trim($info['password']))){
                return showApiJson(0,"密码不允许为空");
            }
            $info['password'] = md5($info['password']);
            $user = AdAdmin::create($info);
            if(!$user){
                return showApiJson(0,"创建管理员失败");
            }
            $data['role_id'] = $info['role_id'];
            $data['admin_id'] = $user['id'];
            $result = AdAdminRole::create($data);
            if($result){
                return showApiJson(1,"管理员创建成功");
            }else{
                return showApiJson(0,"管理员创建失败");
            }

        }else{
            $role = Role::all();
            //$this->assign('role',$role);
            return showApiJson(0,'角色列表',$role);
        }
    }

    public function index()
    {
        $page = input('get.page');

        $limit = input('get.limit');

        $all = AdAdmin::all();

        $count = count($all);

        $admin = Db::name('admin')
            ->alias('a')
            ->join('admin_role w','a.id = w.admin_id')
            ->join('role c','w.role_id = c.id')
            ->page($page,$limit)
            ->select();
        foreach ($admin as &$value){
            $value['login_time'] = date('Y-m-d H:i:s',$value['login_time']);
        }
        return showApiJsonPage(0,'成功',$count,$admin);

    }

    public function delete()
    {
        $id = input('get.id');
        if($id==1){
            return showApiJson(1,"顶级管理员无法删除");
        }
        AdAdminRole::where('admin_id',$id)->delete();
        $result = AdAdmin::destroy($id);
        if($result){
            return showApiJson(1,"管理员删除成功");
        }else{
            return showApiJson(0,"管理员删除失败");
        }
    }

    /**
     * 管理员角色添加,修改,删除,显示操作
     * @return [type] [description]
     */
    public function adminRoleIndex()
    {
        $page = input('get.page');

        $limit = input('get.limit');

        $all = Role::all();

        $list = Role::page($page,$limit)->order('id','asc')->select();

        $count = count($all);

        return showApiJsonPage(0,'成功',$count,$list);

    }

    public function adminRoleDelete()
    {
        Cache::rm('rules');
        $id = input('get.id');
        //删除角色表之前 要先判断有没有管理员在底下 有管理员 是不允许删除的
        $res = AdAdminRole::where('role_id',$id)->find();
        if($res){
            return showApiJson(0,"有管理员存在，不允许删除");
        }
        RoleRule::where('role_id',$id)->delete();
        $result = Role::destroy($id);
        if($result){
            return showApiJson(1,"角色删除成功");
        }else{
            return showApiJson(1,"角色删除失败");
        }
    }

    public function adminRoleEdit()
    {
        if($this->request->isPost()){
            Cache::rm('rules');
            $info = input('post.');
            //验证管理员是否存在
            $hasRole = Role::where('role_name',$info['role_name'])->find();
            if($hasRole&&$hasRole['id']!=$info['id']){
                return showApiJson(0,"该角色名已存在");
            }
            //添加管理员
            $data['id'] = $info['id'];
            $data['role_name'] = $info['role_name'];
            $role = Role::update($data);
            if(!$role){
                return showApiJson(0,"创建管理员失败");
            }
            //若没有 则直接删除
            if(!isset($info['rule_id'])){
                RoleRule::where('role_id',$info['id'])->delete();
            }else{
                //先删除管理员权限，再添加????很复杂 以后用递归解决
                RoleRule::where('role_id',$info['id'])->delete();
                foreach ($info['rule_id'] as $key => $value) {
                    //把顶级菜单添加进去
                    $parent = Rule::where('id', $value)->find();
                    if ($parent['parent_id'] != 0) {
                        $find = RoleRule::where('role_id', $role['id'])->where('rule_id', $parent['parent_id'])->find();
                        if (!$find) {
                            $list['role_id'] = $role['id'];
                            $list['rule_id'] = $parent['parent_id'];
                            RoleRule::create($list);
                        }
                    }
                    //添加当前权限
                    $list['role_id'] = $role['id'];
                    $list['rule_id'] = $value;
                    RoleRule::create($list);
                }
            }
            return showApiJson(1,"修改角色成功");

        }else{
            $id = input('get.id');

            $data = Role::get($id);

            //$this->assign('data',$data);

            $rule = RoleRule::where('role_id',$id)->select();

            //$this->assign('rule',$rule);
            $all = ['role_name' => $data['role_name'],'rule_id'=> $rule];
            return showApiJson(0,'角色权限',$all);
//            //显示 //拿到权限列表
//            $menu = new Menu();
//            $list = $menu->getCateTree();
//            $this->assign('list',$list);
//
//            return $this->fetch();
        }
    }

    public function adminRoleAdd()
    {

        if($this->request->isPost()){
            Cache::rm('rules');
            $info = input('post.');

            //验证管理员是否存在
            $hasRole = Role::where('role_name',$info['role_name'])->find();
            if($hasRole){
                return showApiJson(0,"该角色名已存在");
            }
            //添加管理员
            $data['role_name'] = $info['role_name'];
            $role = Role::create($data);
            if(!$role){
                return showApiJson(0,"创建管理员失败");
            }
            //给管理员添加权限
            if(isset($info['rule_id'])) {
                foreach ($info['rule_id'] as $key => $value) {
                    //把顶级菜单添加进去
                    $parent = Rule::where('id', $value)->find();
                    if ($parent['parent_id'] != 0) {
                        $find = RoleRule::where('role_id', $role['id'])->where('rule_id', $parent['parent_id'])->find();
                        if (!$find) {
                            $list['role_id'] = $role['id'];
                            $list['rule_id'] = $parent['parent_id'];
                            RoleRule::create($list);
                        }
                    }
                    //添加当前权限
                    $list['role_id'] = $role['id'];
                    $list['rule_id'] = $value;
                    RoleRule::create($list);
                }
            }
            return showApiJson(1,"添加角色成功");

        }else{
            //显示 //拿到权限列表
            $menu = new Menu();
            $list = $menu->getCateTree();

            return showApiJson(0,'权限列表',$list);
//            $this->assign('list',$list);
//            return $this->fetch();
        }
    }
    /**
     * 修改个人密码
     * @return [type] [description]
     */
    public function personal()
    {
        if($this->request->isPost()){
            $id = session("island_admin_id");
            $info = input('post.');
            $data = AdAdmin::where('id',$id)->find();
            if($info['name']!=$data['name']){
                $res = AdAdmin::where('name',$info['name'])->find();
                if($res){
                    return showApiJson(0,"该用户名已存在");
                }
            }
            if($data['password'] != md5($info['password_old'])){
                return showApiJson(0,"原密码错误");
            }
            if($info['password'] != $info['password_confirm']){
                return showApiJson(0,"两次密码不一致");
            }
            if(empty(trim($info['password']))){
                return showApiJson(0,"密码不允许为空");
            }
            $info['id'] = $id;
            $info['password'] = md5($info['password']);
            AdAdmin::update($info);
            return showApiJson(1,"修改密码成功");

        }else{
            $name = session('island_admin');

            return showApiJson(0,'名字',$name);
        }
    }


    /**
     * 清除缓存
     * @return [type] [description]
     */
    public function clearCache()
    {
        Cache::clear();
        return showApiJson(1,"清除缓存成功");
    }


}