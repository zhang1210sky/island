<?php

namespace app\index\controller;

use think\Controller;

class Access extends Controller
{
    public function initialize()
    {
        parent::initialize(); // TODO: Change the autogenerated stub

        //获取access_token的值
        if(!cache('access_token')){
            $appId = config('wx.app_id');
            $secret = config('wx.secret');
            $url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid={$appId}&secret={$secret}";
            $res = http_get($url);
            $res = json_decode($res);
            cache('access_token',$res->access_token,7100);
        }
    }
    public function sendMessage()
    {
        $access = cache('access_token');
        $post = [];
        $post['touser'] = '用户openId';
        $post['page'] = 'index';
        $post['emphasis_keyword'] = 'keyword1.DATA';
        $post['color'] = '#173177';

        $post['template_id'] = '模板id';
        $post['form_id'] = 'formId';
        $post['data'] = [
            'keyword1'=>['value'=>'xxxxxx','color'=>'#173177'],
            'keyword2'=>['value'=>'2018-03-06 14:22:34','color'=>'#173177'],
            'keyword3'=>['value'=>'xxxxxx','color'=>'#173177']
        ];

        $url = 'https://api.weixin.qq.com/cgi-bin/message/wxopen/template/send?access_token='.$access;
        $re = $this->filePostContents($url,$post);
        return $re;
    }


    public function filePostContents($url,$data) {

        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, $url);

        curl_setopt($ch, CURLOPT_POST, 1);

        curl_setopt($ch, CURLOPT_COOKIESESSION, 1);

        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));

        curl_setopt($ch, CURLOPT_TIMEOUT, 600);

        //curl_setopt($ch, CURLOPT_USERAGENT, _USERAGENT_);

        //curl_setopt($ch, CURLOPT_REFERER,_REFERER_);

        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

        $r = curl_exec($ch);

        curl_close($ch);

        return $r;

    }





}