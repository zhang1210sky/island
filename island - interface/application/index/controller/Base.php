<?php

namespace app\index\controller;

use think\Controller;
use app\index\model\User as User;

class Base extends Controller
{
    public function login()
    {
        $code = input('get.code');
        if(!$code){
            return showApiJson(1,'code码失效');
        }
        $appId = config('wx.app_id');
        $secret = config('wx.secret');
        $url = "https://api.weixin.qq.com/sns/jscode2session?appid={$appId}&secret={$secret}&js_code={$code}&grant_type=authorization_code";
        $res = http_get($url);
        $info = json_decode($res);
        if(isset($info->errcode)){
            return showApiJson(3,'获取openid失效',$info->errcode);
        }
        $session_key = $info->session_key;
        $openid = $info->openid;

        $res = User::where('openid',$openid)->find();
        if(!$res){
            $data['openid'] = $openid;
            User::create($data);
        }

        $value = $openid.','.$session_key;

        $rd_session = md5($openid);

        cache($rd_session,$value,7200);

        return showApiJson(0,'成功获取登录态!!!',$rd_session);

    }

    public function domain()
    {
        $str = config('wx.domain');

        return showApiJson(0,'域',$str);
    }
}