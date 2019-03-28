import 'package:flutter/material.dart';
import '../model/category.dart';

class ChildCategoryProvide with ChangeNotifier {
  List<BxMallSubDto> childCategoryList = [];
  int childIndex = 0;
  String categoryId = '4'; //大类的id
  String subId = ''; //小类ID
  int page = 1; //列表页数,当改变大类或者小类时进行改变
  String noMoreText = ''; //显示更多的标识

  getChildCategory(List<BxMallSubDto> list, String id) {
    childIndex = 0;
    categoryId = id;
    subId = ''; //点击大类时，把子类ID清空
    page = 1;
    noMoreText = '';
    BxMallSubDto bxMallSubDto = BxMallSubDto();
    bxMallSubDto.mallCategoryId = '';
    bxMallSubDto.mallSubId = '';
    bxMallSubDto.mallSubName = '全部';
    bxMallSubDto.comments = 'null';
    childCategoryList = [bxMallSubDto];
    childCategoryList.addAll(list);
    notifyListeners();
  }

  //改变子类索引
  changeChildIndex(int index, String id) {
    childIndex = index;
    subId = id;
    page = 1;
    noMoreText = '';
    notifyListeners();
  }

  //增加page的方法
  addPage() {
    page++;
  }

  //改变noMoreText数据
  changeNoMore(String text) {
    noMoreText = text;
    notifyListeners();
  }
}
