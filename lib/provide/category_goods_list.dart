import 'package:flutter/material.dart';
import '../model/categoryGoodsList.dart';

class CategoryGoodsListProvide with ChangeNotifier {
  List<CategoryListData> goodsList = [];
  getCategoryGoodsList(List<CategoryListData> list, bool isNewCategory) {
    if (isNewCategory) {
      goodsList.clear();
    }
    goodsList.addAll(list);
    notifyListeners();
  }
}
