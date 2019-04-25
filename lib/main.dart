import 'package:flutter/material.dart';
import './provide/cart.dart';
import './provide/details_info.dart';
import './pages/index_page.dart';
import 'package:provide/provide.dart';
import './provide/child_category.dart';
import './provide/category_goods_list.dart';
import './provide/current_index.dart';
import 'package:fluro/fluro.dart';
import './routers/routers.dart';
import './routers/application.dart';

void main() {
  var providers = Providers();
  providers
    ..provide(Provider<ChildCategoryProvide>.value(ChildCategoryProvide()))
    ..provide(
        Provider<CategoryGoodsListProvide>.value(CategoryGoodsListProvide()))
    ..provide(Provider<DetailsInfoProvide>.value(DetailsInfoProvide()))
    ..provide(Provider<CartProvide>.value(CartProvide()))
    ..provide(Provider<CurrentIndexProvide>.value(CurrentIndexProvide()));
  runApp(ProviderNode(child: MyApp(), providers: providers));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final router = Router();
    Routers.configureRouters(router);
    Application.router = router;

    return Container(
      child: MaterialApp(
          title: '百姓生活+',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: Application.router.generator,
          theme: ThemeData(primaryColor: Colors.pink),
          home: IndexPage()),
    );
  }
}
