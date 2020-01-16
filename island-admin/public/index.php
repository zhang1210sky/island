<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

// [ 应用入口文件 ]
namespace think;
//定义变量
// 加载基础文件
require __DIR__ . '/../thinkphp/base.php';
//跨域处理
if($_SERVER['REQUEST_METHOD'] == 'OPTIONS'){
    header("Access-Control-Allow-Origin: *");
    header('Access-Control-Allow-Methods:*');
    header('Access-Control-Allow-Headers:*');
    header('Access-Control-Allow-Credentials:true');
    file_put_contents('option.txt',json_encode($_REQUEST));
    exit;
}
header('Access-Control-Allow-Origin:*');
// 响应类型
header('Access-Control-Allow-Methods:*');
// 响应头设置
header('Access-Control-Allow-Headers:content-type,token,id');
header("Access-Control-Request-Headers: Origin, X-Requested-With, content-Type, Accept, Authorization");
// 支持事先使用静态方法设置Request对象和Config对象

// 执行应用并响应
Container::get('app')->run()->send();
