<?php
namespace app\index\controller;


use app\index\model\User as User;
use app\index\model\User_msg as UserMsg;
use app\index\model\Collection as Collection;
use app\index\model\Act_collection as ActCollection;
use app\admin\model\My_act as MyAct;
use app\admin\model\Publish_act as PublishAct;
use app\admin\model\Glimpse as Glimpse;
use app\admin\model\Feedback as Feedback;
use app\index\model\Act_goods as ActGoods;
use app\index\model\Glimpse_goods as GlimpseGoods;
use app\admin\model\Navigation as Navigation;

use think\Controller;

class Index extends Controller
{
    public function index()
    {
        $aa = PublishAct::find();
        //dump(\think\facade\Config::get('app.default_return_type'));
        dump($aa);
        halt('接口连接成功');
    }
    public function UserId()
    {

        $post = input('post.rd_session');
        $get = input('get.rd_session');

        if($post){
            $rd_session = $post;
        }else if($get){
            $rd_session = $get;
        }else{
            return 'rd_session值失效，请重新登录';
        }
        $res = cache($rd_session);

        if(!$res){
            return '没有拿到登陆态';
        }
        $info_arr = explode(',',$res);
        $openid = $info_arr[0];
        $user = User::where('openid',$openid)->find();

        if(!$user){
            return '没有该用户';
        }

        return $user['id'];
    }
    //活动收藏接口
    public function act_collection()
    {
        $user_id = $this->UserId();
        if(!is_int($user_id)){
            return showApiJson(9,$user_id);
        }
        $act_id = input('post.act_id');
        if(!$act_id){
            return showApiJson(1,'没有商户id');
        }
        $res = ActCollection::where('user_id',$user_id)->where('act_id',$act_id)->find();
        if($res){
            ActCollection::where('user_id',$user_id)->where('act_id',$act_id)->delete();
            return showApiJson(2,'取消收藏成功');
        }
        //存入收藏表
        $data['user_id'] = $user_id;
        $data['act_id'] = $act_id;
        $data['time'] = date('Y-m-d H:i:s',time());
        ActCollection::create($data);
        return showApiJson(3,'收藏成功');


    }
    //收藏接口
    public function collection()
    {
        $user_id = $this->UserId();
        if(!is_int($user_id)){
            return showApiJson(9,$user_id);
        }
        $bus_id = input('post.bus_id');
        if(!$bus_id){
            return showApiJson(1,'没有商户id');
        }
        $res = Collection::where('user_id',$user_id)->where('bus_id',$bus_id)->find();
        if($res){
            Collection::where('user_id',$user_id)->where('bus_id',$bus_id)->delete();
            return showApiJson(2,'取消收藏成功');
        }
        //存入收藏表
        $data['user_id'] = $user_id;
        $data['bus_id'] = $bus_id;
        $data['time'] = date('Y-m-d H:i:s',time());
        Collection::create($data);
        return showApiJson(3,'收藏成功');
    }
    //报名接口
    public function sign_up()
    {
        $user_id = $this->UserId();
        if(!is_int($user_id)){
            return showApiJson(9,$user_id);
        }
        $name = input('post.name');
        $phone = input('post.phone');
        $act_id = input('post.act_id');
        if(!$name || !$phone || !$act_id){
            return showApiJson(1,'缺少参数');
        }
        //报名之后不能再报名
        $person = MyAct::field('id')->where('act_id',$act_id)->where('user_id',$user_id)->find();
        if($person){
            return showApiJson(1,'您已报名成功了');
        }
        $data['name'] = $name;
        $data['phone'] = $phone;
        $data['user_id'] = $user_id;
        $data['act_id'] = $act_id;
        $data['time'] = date('Y-m-d H:i:s',time());
        $abc = MyAct::create($data);

        return showApiJson(0,'报名成功',$abc);
    }
    //反馈接口
    public function feedback()
    {
        $user_id = $this->UserId();
        if(!is_int($user_id)){
            return showApiJson(9,$user_id);
        }
        $data = Feedback::where('user_id',$user_id)->order('time','desc')->find();
        $last_time = strtotime($data['time']);
        if(time() - $last_time < 1800){
            return showApiJson(1,'半个小时内不能重复提交');
        }
        $info = input('post.');
        $info['time'] = date('Y-m-d H:i:s',time());
        $info['user_id'] = $user_id;
        Feedback::create($info);
        return showApiJson(0,'提交成功');
    }
    //活动点赞
    public function act_goods()
    {
        $user_id = $this->UserId();
        if(!is_int($user_id)){
            return showApiJson(9,$user_id);
        }
        $act_id = input('post.act_id');
        if(!$act_id){
            return showApiJson(1,'没有活动id');
        }
        $res = ActGoods::where('user_id',$user_id)->where('act_id',$act_id)->find();
        if($res){
            ActGoods::where('user_id',$user_id)->where('act_id',$act_id)->delete();
            //删除点赞数
            PublishAct::where('id',$act_id)->setDec('Good_num');
            $info = PublishAct::field('Good_num')->where('id',$act_id)->find();
            return showApiJson(2,'取消点赞',$info['Good_num']);
        }
        //存入收藏表
        $data['user_id'] = $user_id;
        $data['act_id'] = $act_id;
        ActGoods::create($data);
        //增加点赞数
        PublishAct::where('id',$act_id)->setInc('Good_num');
        return showApiJson(3,'点赞成功');
    }
    //掠影点赞
    public function glimpse_goods()
    {
        $user_id = $this->UserId();
        if(!is_int($user_id)){
            return showApiJson(9,$user_id);
        }
        $glimpse_id = 5;//input('post.glimpse_id');
        if(!$glimpse_id){
            return showApiJson(1,'没有掠影id');
        }
        $res = GlimpseGoods::where('user_id',$user_id)->where('glimpse_id',$glimpse_id)->find();;
        if($res){
            GlimpseGoods::where('user_id',$user_id)->where('glimpse_id',$glimpse_id)->delete();
            //删除点赞数
            Glimpse::where('id',$glimpse_id)->setDec('goods_num');
            $info = Glimpse::field('goods_num')->where('id',$glimpse_id)->find();
            return showApiJson(2,'取消点赞',$info['goods_num']);
        }
        //存入收藏表
        $data['user_id'] = $user_id;
        $data['glimpse_id'] = $glimpse_id;
        GlimpseGoods::create($data);
        //增加点赞数
        Glimpse::where('id',$glimpse_id)->setInc('goods_num');
        return showApiJson(3,'点赞成功');
    }
    //我的活动
    public function my_act()
    {
        $user_id = $this->UserId();
        if(!is_int($user_id)){
            return showApiJson(9,$user_id);
        }
        $list = MyAct::where('user_id',$user_id)->select();
        foreach ($list as &$value){
            $data = PublishAct::where('id',$value['act_id'])->find();
            $value['title'] = $data['title'];
            $value['start_time'] = $data['start_time'];
        }
        return showApiJson(0,'我的活动',$list);
    }
    //我的活动收藏
    public function my_act_collect()
    {
        $user_id = $this->UserId();
        if(!is_int($user_id)){
            return showApiJson(9,$user_id);
        }
        $list = ActCollection::where('user_id',$user_id)->select();
        foreach ($list as &$value){
            $data = PublishAct::where('id',$value['act_id'])->find();
            $value['title'] = $data['title'];
        }
        return showApiJson(0,'我的活动收藏',$list);
    }
    //活动收藏删除
    public function my_act_collect_delete()
    {
        $id = input('get.id');

        $res = ActCollection::destroy($id);
        if($res){
            return showApiJson(0,'删除成功');
        }else{
            return showApiJson(1,'删除失败');
        }
    }
    //我的商户收藏
    public function my_bus_collect()
    {
        $user_id = $this->UserId();
        if(!is_int($user_id)){
            return showApiJson(9,$user_id);
        }

        $page = input('get.page');

        $limit = input('get.limit');
        
        $count = Collection::where('user_id',$user_id)->count();

        $list = Collection::where('user_id',$user_id)->page($page,$limit)->select();
        foreach ($list as &$value){
            $data = Navigation::where('id',$value['bus_id'])->find();
            $value['title'] = $data['name'];
        }
        return showApiJsonPage(0,'我的活动',$count,$list);
    }
    //商户收藏删除
    public function my_bus_collect_delete()
    {
        $id = input('get.id');

        $res = Collection::destroy($id);
        if($res){
            return showApiJson(0,'删除成功');
        }else{
            return showApiJson(1,'删除失败');
        }
    }
    //我的消息
    public function my_news()
    {
        $user_id = $this->UserId();
        if(!is_int($user_id)){
            return showApiJson(9,$user_id);
        }
        $lists = UserMsg::where('user_id',$user_id)->order(['state','time'=>'desc'])->select();
        foreach ($lists as $key => &$list){
            $news_time = strtotime($list['time']);
            if(time() - $news_time >= 86400*7){
                //大于7天就删除
                UserMsg::destroy($list['id']);
                unset($lists[$key]);
            }elseif(time() - $news_time >= 86400*6){
                $list['time'] = "6天前";
            }elseif(time() - $news_time >= 86400*5){
                $list['time'] = "5天前";
            }elseif(time() - $news_time >= 86400*4){
                $list['time'] = "4天前";
            }elseif(time() - $news_time >= 86400*3){
                $list['time'] = "3天前";
            }elseif(time() - $news_time >= 86400*2){
                $list['time'] = "2天前";
            }elseif(time() - $news_time >= 86400*1){
                $list['time'] = "1天前";
            }
        }
//        $news_lists = UserMsg::where('user_id',$user_id)->order(['state','time'=>'desc'])->select();

        //dump($news_lists);
        return showApiJson(0,'我的消息',$lists);
    }
    //删除我的消息
    public function news_delete()
    {
        $id = input('get.id');

        UserMsg::destroy($id);

        return showApiJson(0,'删除成功');
    }
    public function news_sign()
    {
        $id = input('get.id');
        $data['id'] = $id;
        $info = UserMsg::field('state')->get($id);
        if($info['state']==0){
            $data['state'] = 1;
        }else{
            $data['state'] = 0;
        }
        UserMsg::update($data);
        return showApiJson(0,'修改状态');
    }

}
