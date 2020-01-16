<?php

namespace app\index\controller;

use app\admin\model\Cart as Cart;
use app\admin\model\Cart_area as CartArea;
use app\admin\model\Navigation as Navigation;
use think\Controller;

class Export extends Controller
{
    public function _import()
    {
        $vendor_path = \think\facade\Env::get('vendor_path');

        $input_file = $vendor_path . "BusinessInput.xlsx";

        require $vendor_path . 'phpoffice/phpexcel/Classes/PHPExcel.php';

        //set_time_limit(90);
        $objPHPExcel = \PHPExcel_IOFactory::load($input_file);


        $sheet_count = 1;//$objPHPExcel->getSheetCount();
        //dump($sheet_count);
        for ($s = 0; $s < $sheet_count; $s++) {
            $currentSheet = $objPHPExcel->getSheet($s);// 当前页
            $row_num = $currentSheet->getHighestRow();// 当前页行数
            $col_max = $currentSheet->getHighestColumn(); // 当前页最大列号
            //dump($row_num);
            //dump($col_max);
            // 循环从第二行开始，第一行往往是表头
            for ($i = 2; $i <= $row_num; $i++) {
                $cell_values = array();
                for ($j = 'A'; $j <= $col_max; $j++) {
                    $address = $j . $i; // 单元格坐标
                    $cell_values[] = $currentSheet->getCell($address)->getFormattedValue();
                }


                $data = [
                    'name' => trim($cell_values[0]),
                    'b_cart' => trim($cell_values[1]),
                    'b_type' => trim($cell_values[2]),
                    'area' => trim($cell_values[3]),
                    'address' => trim($cell_values[4]),
                    'phone' => trim($cell_values[5]),
                    'introduce' => trim($cell_values[6]),
                    'hours' => trim($cell_values[7]),
                    'is_out' => trim($cell_values[8]),
                    'remarks' => trim($cell_values[9]),
                ];
                //分类要做处理 存入数字int
                //地址要做处理 存入经纬度
                $area = CartArea::where('cart_name',$data['area'])->find();
                $data['area'] = $area['id'];
                $cart = Cart::where('cart_name',$data['b_cart'])->find();
                $data['b_cart'] = $cart['id'];

                $type = Cart::where('cart_name',$data['b_type'])->find();
                $data['b_type'] = $type['id'];
                $data['address'] = "儋州市中国海南海花岛".$data['address'];
                $data['address'] = str_replace('#','号',$data['address']);
                $index = new \app\admin\controller\Navigation();
                $info = $index->address_check($data['address']);
                $data['latitude'] = $info['latitude'];
                $data['longitude'] = $info['longitude'];
                if($data['is_out']=="是"){
                    $data['is_out'] = 1;
                }else{
                    $data['is_out'] = 0;
                }
                //dump($data);
                Navigation::create($data);


            }//end rows
        }
        exit();
        //$this->success('成功导入并合成好指数数据', '/admin/bank_weibo/index');

    }







}
