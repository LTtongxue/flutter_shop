import 'package:flutter/material.dart';
import '../model/details.dart';
import '../service/service_method.dart';
import 'dart:convert';

class DetailsInfoProvide with ChangeNotifier {
  DetailsModel goodsInfo;

  getGoodsInfo(String id) {
    var formData = {'goodId': id};
    request('getGoodDetailById', formData: formData).then((val) {
      var data = json.decode(val.toString());
      print('goodsInfo = $data');
      goodsInfo = DetailsModel.fromJson(data);
      notifyListeners();
    });
  }
}
