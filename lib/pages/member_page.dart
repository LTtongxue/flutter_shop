import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MemberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('会员中心'),
      ),
      body: ListView(
        children: <Widget>[
          _topHeader(),
          _myOtherTile(Icons.list, '我的订单'),
          _orderType(),
          _otherTile(),
        ],
      ),
    );
  }

  Widget _topHeader() {
    return Container(
      width: ScreenUtil().setWidth(750),
      padding: EdgeInsets.all(20),
      color: Colors.pinkAccent,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 30),
            child: ClipOval(
              child: Image.network(
                  'http://blogimages.jspang.com/blogtouxiang1.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              '技术胖',
              style: TextStyle(
                  fontSize: ScreenUtil().setSp(36), color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }

  Widget _orderType() {
    return Container(
      margin: EdgeInsets.only(top: 5),
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setHeight(120),
      padding: EdgeInsets.only(top: 20, bottom: 20),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          _myOrderType(Icons.party_mode, '待付款'),
          _myOrderType(Icons.query_builder, '待发货'),
          _myOrderType(Icons.directions_car, '待收货'),
          _myOrderType(Icons.content_paste, '待评价'),
        ],
      ),
    );
  }

  Widget _myOrderType(IconData iconData, String title) {
    return Container(
      width: ScreenUtil().setWidth(187),
      child: Column(
        children: <Widget>[
          Icon(
            iconData,
            size: 30,
          ),
          Text(title),
        ],
      ),
    );
  }

  Widget _otherTile() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          _myOtherTile(Icons.access_alarm, '领取优惠券'),
          _myOtherTile(Icons.access_time, '已领取优惠券'),
          _myOtherTile(Icons.account_balance, '地址管理'),
          _myOtherTile(Icons.account_box, '客服电话'),
          _myOtherTile(Icons.account_circle, '关于我们'),
        ],
      ),
    );
  }

  Widget _myOtherTile(IconData iconData, String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.black12),
        ),
      ),
      child: ListTile(
        leading: Icon(iconData),
        title: Text(title),
        trailing: Icon(Icons.arrow_right),
      ),
    );
  }
}
