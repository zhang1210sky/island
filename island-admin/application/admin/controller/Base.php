<?php

namespace app\admin\controller;

use app\admin\model\Role_rule  as RoleRule;
use app\admin\model\Admin_role as AdminRole;
use app\admin\model\Rule as Rule;
use think\Controller;
use think\facade\Cache;

//存入缓存
class Base extends Controller
{
    public $show_menu;

    public function _empty()
    {
        echo "该目录是一个空方法";
    }

    protected function initialize()
    {
        parent::initialize();
        $admin = session('island_admin');
        if (!$admin) {
            $this->redirect('__PUBLIC__/index.php/admin/login/index');
        }
        //获取用户id
        $id = session('island_admin_id');
        //获取角色信息
        $admin_role = AdminRole::where('admin_id', $id)->find();
        $role_id = $admin_role['role_id'];
        //获取菜单
        $show = $this->getMenu($role_id);
        //如果是普通管理员则检查权限
        if ($role_id != 1) {
            $this->checkAuth($role_id);
        }
        //$this->assign('show',$show);

        $this->show_menu = $show;
    }

    public function show_menu()
    {

        return showApiJson(0, '展示菜单', $this->show_menu);
    }
    //权限审核
    public function getMenu($id)
    {
        if ($id == 1) {
            //是超级管理员
            $show_all_new = Cache::get('all');
            if (!$show_all_new) {
                $show_all = Rule::all();
                $show_all_new = [];
                foreach ($show_all as $value) {
                    if ($value['is_show'] == 1) {
                        $show_all_new[] = $value;
                    }
                }
                Cache::set('all', $show_all_new);
            }

            return $show_all_new;
        } else {
            //是普通管理员
            $rules = $this->permissions($id);
            //过滤掉不是ishow的
            $show = [];
            foreach ($rules as $vv) {
                if ($vv['is_show'] == 1) {
                    $show[] = $vv;
                }
            }
            //导航栏显示
            return $show;
        }
    }
    //检查权限
    public function checkAuth($id)
    {
        $module     = $this->request->module();
        $controller = $this->request->controller();
        $action     = $this->request->action();
        //获取当前访 问的模版控制器方法
        $auth_str = strtolower($module . '/' . $controller . '/' . $action);
        //获取权限数组
        $rules = $this->permissions($id);
        foreach ($rules as $v) {
            $rule_list[] = strtolower($v['module'] . "/" . $v['controller'] . "/" . $v['action']);
        }
        //添加基本权限
        $rule_list[] = "admin/index/index";
        $rule_list[] = "admin/admin/clearcache";
        $rule_list[] = "admin/base/show_menu";
        $rule_list[] = "admin/navigation/get_cart";
        $rule_list[] = "admin/navigation/cart_index";
        $rule_list[] = "admin/navigation/address_check";
        $rule_list[] = "admin/glimpse/editor_upload";
        $rule_list[] = "admin/activity/upload";
        $rule_list[] = "admin/publish/sign";
        $rule_list[] = "admin/publish/act_title";
        $rule_list[] = "admin/publish/delete_sign";
        $rule_list[] = "admin/publish/export";
        $rule_list = array_unique($rule_list);
        //判断权限

        if (!in_array($auth_str, $rule_list)) {
            $this->error('没有权限访问');
        }
    }
    //获取当前用户所有权限信息
    public function permissions($id)
    {
        $rule_id = RoleRule::where('role_id', $id)->select();
        $rule_ids = [];
        foreach ($rule_id as $value) {
            $rule_ids[] = $value['rule_id'];
        }
        //查询的时候加入缓存
        $rules = Cache::get('rules');
        if (!$rules) {
            $rules = Rule::where('id', "in", $rule_ids)->select();
            Cache::set('rules', $rules);
        }
        return $rules;
    }
}