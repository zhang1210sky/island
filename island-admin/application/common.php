<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件
//定义路径
define('DS', DIRECTORY_SEPARATOR);
defined('APP_PATH') or define('APP_PATH', dirname($_SERVER['SCRIPT_FILENAME']) . DS);
defined('ROOT_PATH') or define('ROOT_PATH', dirname(realpath(APP_PATH)) . DS);
define('UPLOAD_PATH',ROOT_PATH . 'public' . DS . 'uploads'); // 上传路径

/**
 * 多文件上传
 * @param  array $file 上传的数组
 * @return string $name 文件名字
 */
//?????
function create_file($files)
{
    //没有做判断
    $images = $file_path = [];
    foreach ($files['name'] as $k => $file){
        $images[] = [
            'name' => $file,
            'tmp_name' => $files['tmp_name'][$k],
            'type' => $files['type'][$k],
            'error' => $files['error'][$k],
            'size' => $files['size'][$k]
        ];
    }

    foreach ($images as $file){
        $res = upload_file($file);

        if($res){
            $file_path[] = $res;
        }
    }
    return $file_path;
}
/**
 * 原声上传文件
 * @param  array $file 上传的数组
 * @return string $name 文件名字
 */
//原生上传文件
function upload_file($file)
{
    if(!is_array($file) || !isset($file['error'])){
        //文件无效
        return false;
    }
    //判读是否是一个路径 is_dir
    //判断上传过程是否出错
    if($file['error'] > 0){
        return false;
    }
    //判断mime类型
    $file['type'] = strtolower($file['type']);
    if(!in_array($file['type'],["image/jpeg","image/jpg","image/png","image/gif"])){
        return false;
    }
    //判断后缀是否允许
    $ext = strtolower(ltrim(strrchr($file['name'],'.'),'.'));
    if(!in_array($ext,["jpeg","jpg","png","gif"])){
        return false;
    }
    //判断大小
    if($file['size']>8000000){
        return false;
    }
    //构造文件名字 类型_年月日__随机字符串.$ext
    //移动到制定目录
    $name = md5(microtime()).'.'.$ext;
    if(!is_uploaded_file($file['tmp_name'])){
        return false;
    }
    //创建目录
    $data = date('Ymd',time());
    $dir = UPLOAD_PATH.'/'.$data;
    if(!is_dir($dir)){
        mkdir(UPLOAD_PATH.'/'.$data);
    }
    if(move_uploaded_file($file['tmp_name'],UPLOAD_PATH.'/'.$data.'/'.$name)){
        return 'uploads'.'/'.$data.'/'.$name;
    }else{
        return false;
    }
}
/**
 * 通用化API接口数据输出
 * @param  [type]  $code   [业务状态码]
 * @param  [type]  $message  [信息提示]
 * @param  integer $httpCode [http状态码]
 * @param  array   $data     [数据]code
 * @return json [type]
 */
function showApiJson($code, $message, $data = []){
    $data = [
        'code' => $code,
        'msg' => $message,
        'data'=> $data
    ];
    return json($data);
}
function showApiJsonPage($code, $message,$page,$data = []){
    $data = [
        'code' => $code,
        'msg' => $message,
        'count'=> $page,
        'data'=> $data
    ];
    return json($data);
}
function showApiJsonPageState($code, $message,$state,$page,$data = []){
    $data = [
        'code' => $code,
        'msg' => $message,
        'count'=> $page,
        'state'=>$state,
        'data'=> $data
    ];
    return json($data);
}


//导出电子表格
function exportExcel($title=array(), $data=array(), $fileName='', $savePath='./', $isDown=false){
    $vendor_path = \think\facade\Env::get('vendor_path');
    require_once($vendor_path.'phpoffice/phpexcel/Classes/PHPExcel.php');
    $obj = new PHPExcel();
    //横向单元格标识
    $cellName = array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'AA', 'AB', 'AC', 'AD', 'AE', 'AF', 'AG', 'AH', 'AI', 'AJ', 'AK', 'AL', 'AM', 'AN', 'AO', 'AP', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AV', 'AW', 'AX', 'AY', 'AZ');
    $obj->getActiveSheet(0)->setTitle('sheet名称');   //设置sheet名称
    $_row = 1;   //设置纵向单元格标识
    if($title){
        $_cnt = count($title);
        $obj->getActiveSheet(0)->mergeCells('A'.$_row.':'.$cellName[$_cnt-1].$_row);   //合并单元格
        $obj->setActiveSheetIndex(0)->setCellValue('A'.$_row, '数据导出：'.date('Y-m-d H:i:s'));  //设置合并后的单元格内容
        $_row++;
        $i = 0;
        foreach($title AS $v){   //设置列标题
            $obj->setActiveSheetIndex(0)->setCellValue($cellName[$i].$_row, $v);
            $i++;
        }
        $_row++;
    }
    //填写数据
    if($data){
        $i = 0;
        foreach($data AS $_v){
            $j = 0;
            foreach($_v AS $_cell){
                $obj->getActiveSheet(0)->setCellValue($cellName[$j] . ($i+$_row), $_cell);
                $j++;
            }
            $i++;
        }
    }
    //文件名处理
    if(!$fileName){
        $fileName = uniqid(time(),true);
    }
    $objWrite = PHPExcel_IOFactory::createWriter($obj, 'Excel2007');

    if($isDown){   //网页下载

        header('pragma:public');

        header("Content-Disposition:attachment;filename=$fileName.xls");

        $objWrite->save('php://output');
        exit;
    }
    $_fileName = iconv("utf-8", "gb2312", $fileName);   //转码
    $_savePath = $savePath.$_fileName.'.xlsx';
    $objWrite->save($_savePath);
    return $savePath.$fileName.'.xlsx';
}

/**
 * 获取客户端IP地址
 * @param integer $type 返回类型 0 返回IP地址 1 返回IPV4地址数字
 * @param boolean $adv 是否进行高级模式获取（有可能被伪装）
 * @return mixed
 */
function get_client_ip($type = 0, $adv = false)
{
    $type = $type ? 1 : 0;
    static $ip = NULL;
    if ($ip !== NULL) return $ip[$type];
    if ($adv) {
        if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $arr = explode(',', $_SERVER['HTTP_X_FORWARDED_FOR']);
            $pos = array_search('unknown', $arr);
            if (false !== $pos) unset($arr[$pos]);
            $ip = trim($arr[0]);
        } elseif (isset($_SERVER['HTTP_CLIENT_IP'])) {
            $ip = $_SERVER['HTTP_CLIENT_IP'];
        } elseif (isset($_SERVER['REMOTE_ADDR'])) {
            $ip = $_SERVER['REMOTE_ADDR'];
        }
    } elseif (isset($_SERVER['REMOTE_ADDR'])) {
        $ip = $_SERVER['REMOTE_ADDR'];
    }
    // IP地址合法验证
    $long = sprintf("%u", ip2long($ip));
    $ip = $long ? array($ip, $long) : array('0.0.0.0', 0);
    return $ip[$type];
}

/**
 * array unique_rand( int $min, int $max, int $num )
 * 生成一定数量的不重复随机数
 * @param $min
 * @param $max : 指定随机数的范围
 * @param int $num : 指定生成数量
 * @return array|null
 */
function unique_rand($min, $max, $num = 1)
{
    $count = 0;
    $return = array();
    while ($count < $num) {
        $return[] = mt_rand($min, $max);
        $return = array_flip(array_flip($return));
        $count = count($return);
    }
    shuffle($return);
    return $return;
}

/**
 * 把返回的数据集转换成Tree
 * @param array $list 要转换的数据集
 * @param string $pk
 * @param string $pid parent标记字段
 * @param string $child
 * @param int $root
 * @return array
 */
function list_to_tree($list, $pk = 'id', $pid = 'pid', $child = '_child', $root = 0)
{
    // 创建Tree
    $tree = array();
    if (is_array($list)) {
        // 创建基于主键的数组引用
        $refer = array();
        foreach ($list as $key => $data) {
            $refer[$data[$pk]] =& $list[$key];
        }
        foreach ($list as $key => $data) {
            // 判断是否存在parent
            $parentId = $data[$pid];
            if ($root == $parentId) {
                $tree[] =& $list[$key];
            } else {
                if (isset($refer[$parentId])) {
                    $parent =& $refer[$parentId];
                    $parent[$child][] =& $list[$key];
                }
            }
        }
    }
    return $tree;
}

/**
 * 将list_to_tree的树还原成列表
 * @param array $tree 原来的树
 * @param string $child 孩子节点的键
 * @param string $order 排序显示的键，一般是主键 升序排列
 * @param array $list 过渡用的中间数组，
 * @return array        返回排过序的列表数组
 */
function tree_to_list($tree, $child = '_child', $order = 'id', &$list = array())
{
    if (is_array($tree)) {
        foreach ($tree as $key => $value) {
            $reffer = $value;
            if (isset($reffer[$child])) {
                unset($reffer[$child]);
                tree_to_list($value[$child], $child, $order, $list);
            }
            $list[] = $reffer;
        }
        $list = list_sort_by($list, $order, $sortby = 'asc');
    }
    return $list;
}

/**
 * 对查询结果集进行排序
 * @access public
 * @param array $list 查询结果
 * @param string $field 排序的字段名
 * @param string $sortby 排序类型
 * asc正向排序 desc逆向排序 nat自然排序
 * @return array
 */
function list_sort_by($list, $field, $sortby = 'asc')
{
    if (is_array($list)) {
        $refer = $resultSet = array();
        foreach ($list as $i => $data)
            $refer[$i] = &$data[$field];
        switch ($sortby) {
            case 'asc': // 正向排序
                asort($refer);
                break;
            case 'desc':// 逆向排序
                arsort($refer);
                break;
            case 'nat': // 自然排序
                natcasesort($refer);
                break;
        }
        foreach ($refer as $key => $val)
            $resultSet[] = &$list[$key];
        return $resultSet;
    }
    return false;
}

/**
 * 时间差
 * @param $part
 * @param $begin
 * @param $end
 * @return false|int|string
 */
function DateDiff($part, $begin, $end)
{
    $diff = strtotime($end) - strtotime($begin);
    switch ($part) {
        case "y":
            $retval = bcdiv($diff, (60 * 60 * 24 * 365));
            break;
        case "m":
            $retval = bcdiv($diff, (60 * 60 * 24 * 30));
            break;
        case "w":
            $retval = bcdiv($diff, (60 * 60 * 24 * 7));
            break;
        case "d":
            $retval = bcdiv($diff, (60 * 60 * 24));
            break;
        case "h":
            $retval = bcdiv($diff, (60 * 60));
            break;
        case "n":
            $retval = bcdiv($diff, 60);
            break;
        case "s":
            $retval = $diff;
            break;
    }
    return $retval;
}

/**
 * GET 请求
 * @param string $url
 * @param $header
 * @return bool|mixed
 */
function http_get($url, $header = null)
{
    $oCurl = curl_init();
    if (stripos($url, "https://") !== false) {
        curl_setopt($oCurl, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($oCurl, CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($oCurl, CURLOPT_SSLVERSION, 1); //CURL_SSLVERSION_TLSv1
    }
    if ($header) {
        curl_setopt($oCurl, CURLOPT_HTTPHEADER, $header);
    }
    curl_setopt($oCurl, CURLOPT_URL, $url);
    curl_setopt($oCurl, CURLOPT_RETURNTRANSFER, 1);
    $sContent = curl_exec($oCurl);
    $aStatus = curl_getinfo($oCurl);
    curl_close($oCurl);
    if (intval($aStatus["http_code"]) == 200) {
        return $sContent;
    } else {
        return false;
    }
}

/**
 * POST 请求
 * @param string $url
 * @param array $param
 * @param null $header
 * @param boolean $post_file 是否文件上传
 * @return string content
 */
function http_post($url, $param, $header = null, $post_file = false)
{
    $oCurl = curl_init();
    if (stripos($url, "https://") !== false) {
        curl_setopt($oCurl, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($oCurl, CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($oCurl, CURLOPT_SSLVERSION, 1); //CURL_SSLVERSION_TLSv1
    }
    if (is_string($param) || $post_file) {
        $strPOST = $param;
    } else {
        $aPOST = array();
        foreach ($param as $key => $val) {
            $aPOST[] = $key . "=" . urlencode($val);
        }
        $strPOST = join("&", $aPOST);
    }
    //dump($strPOST);exit;
    if ($header) {
        curl_setopt($oCurl, CURLOPT_HTTPHEADER, $header);
    }
    curl_setopt($oCurl, CURLOPT_URL, $url);
    curl_setopt($oCurl, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($oCurl, CURLOPT_POST, true);
    curl_setopt($oCurl, CURLOPT_POSTFIELDS, $strPOST);
    $sContent = curl_exec($oCurl);
    $aStatus = curl_getinfo($oCurl);
//    dump($aStatus);exit;
    curl_close($oCurl);
    if (intval($aStatus["http_code"]) == 200) {
        return $sContent;
    } else {
        return false;
    }
}

/**
 * 远程图片转base64
 * @param $url
 * @return bool|string
 */
function base64_remote_pic($url)
{
    $header = [
        'User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:45.0) Gecko/20100101 Firefox/45.0',
        'Accept-Language: zh-CN,zh;q=0.8,en-US;q=0.5,en;q=0.3',
        'Accept-Encoding: gzip, deflate',
    ];
    $data = http_get($url, $header);
    if ($data) {//把URL格式的图片转成base64_encode格式的！
        return 'data:image/jpeg;base64,' . base64_encode($data);
    }
    return false;
}

/**
 * 下载远程图片
 * @param $file_path
 * @param $url
 * @return string
 */
function download_remote_pic($file_path, $url)
{
    set_time_limit(0);//设置PHP超时时间
    $img_content = base64_remote_pic($url);//图片内容
    if (preg_match('/^(data:\s*image\/(\w+);base64,)/', $img_content, $result)) {
        $type = $result[2];//得到图片类型png?jpg?gif?
        $new_file = $file_path . '.' . $type;
        $dir = dirname($new_file);
        if (!is_dir($dir)) {
            mkdir($dir, 0755, true);
        }
        if (!is_file($new_file)) {
            $r = file_put_contents($new_file, base64_decode(str_replace($result[1], '', $img_content)));
            if ($r) {
                return $new_file;
            }
        }
        return false;
    }
}

/**
 * 图片转base64
 * @param $file
 * @return string
 */
function base64_encode_image($file)
{
    $type = getimagesize($file);//取得图片的大小，类型等
    $fp = fopen($file, "r") or die("不能打开文件");

    $file_content = chunk_split(base64_encode(fread($fp, filesize($file))));//base64编码
    switch ($type[2]) {//判读图片类型
        case 1:
            $img_type = "gif";
            break;
        case 2:
            $img_type = "jpg";
            break;
        case 3:
            $img_type = "png";
            break;
    }
    $img = 'data:image/' . $img_type . ';base64,' . $file_content;//合成图片的base64编码
    fclose($fp);
    return $img;
}
/**
 * 服务器
 * @param $url
 * @return string
 */
function getJson($url){
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    $output = curl_exec($ch);
    curl_close($ch);
    return json_decode($output, true);
}
