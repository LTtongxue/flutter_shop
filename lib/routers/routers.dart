import 'package:flutter/material.dart';
import './router_handler.dart';
import 'package:fluro/fluro.dart';

class Routers {
  static String root = '/';
  static String detailsPage = '/detail';
  static void configureRouters(Router router) {
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        print('ROUTER NOT FOUND!!!');
      },
    );
    router.define(detailsPage, handler: detailsHandler);
  }
}
