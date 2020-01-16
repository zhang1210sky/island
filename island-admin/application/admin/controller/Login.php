<?php
namespace app\admin\controller;

use think\captcha\Captcha;
use think\Controller;
use app\admin\model\Admin as Admin;

class Login extends Controller
{
    public function index(){
        if($this->request->isPost()){
            //判断
            $name = input('post.name');
            $password = input('post.password');
            $res = Admin::where('name',$name)->find();
            if($res['password']!=md5($password)){
                $this->error('密码错误');
            }
            $captcha = input('post.captcha');
            $verify = new Captcha();
            $capt = $verify->check($captcha);
            if (!$capt) {
                $this->error('验证码不正确');
            }
            //存入最后登录时间 和ip地址
            $update['id'] = $res['id'];
            $update['login_time'] = time();
            $update['login_ip'] = get_client_ip(0,true);
            Admin::update($update);
            session('island_admin', $res['name']);
            session('island_admin_id', $res['id']);
            return showApiJson(1,"登录成功,正在跳转...");
        }else{
            return $this->fetch();
        }
    }

    public function logout()
    {

        session('island_admin', null);
        session('island_admin_id', null);
        $this->redirect('/index.php/admin/login/index');
    }

    //验证码
    public function verify()
    {
        ob_clean();
        $config =    [
            'length'    =>  4,
        ];
        $captcha = new Captcha($config);
        return $captcha->entry();
    }

    public function user_name()
    {
        $name = session('island_admin');

        return showApiJson(0,'session名',$name);
    }
}
