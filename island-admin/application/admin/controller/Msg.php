<?php
namespace app\admin\controller;

use app\admin\model\User_msg as UserMsg;
use app\index\model\User as User;

class Msg extends Base
{

    public function index()
    {
        $msg = input('post.msg');

        $data['msg'] = $msg;
        $data['time'] = date('Y-m-d H:i',time());

        $user = User::field('id')->all();

        foreach ($user as $value){
            $data['user_id'] = $value['id'];
            UserMsg::create($data);
        }

        return showApiJson(1,'发送成功');
    }

}