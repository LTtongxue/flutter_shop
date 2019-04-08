import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsExplain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(750),
      margin: EdgeInsets.only(top: 10.0),
      color: Colors.white,
      padding: EdgeInsets.all(10.0),
      child: Text(
        '说明：> 急速送达 > 正品保证',
        style: TextStyle(fontSize: ScreenUtil().setSp(30), color: Colors.red),
      ),
    );
  }
}
