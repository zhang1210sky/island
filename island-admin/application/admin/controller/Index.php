<?php
namespace app\admin\controller;



class Index extends Base
{
    public function index()
    {

        $this->redirect('__PUBLIC__/index.php/admin/login/index');
    }

}
