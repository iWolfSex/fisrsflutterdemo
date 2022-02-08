/*
 * @Author: liuchao
 * @Date: 2021-11-07 22:55:48
 * @LastEditors: liuchao
 * @LastEditTime: 2022-02-08 15:04:09
 * @Description: file content
 */
// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';

import '../tabs/Search.dart';
import '../tabs/Home.dart';
import 'package:my_app/Pages/tabs/Form.dart';
import '../MyTabBar/MyTabBar.dart';
import '../tabs/Product.dart';
import '../tabs/ProductInfo.dart';
import '../user/Login.dart';
import '../user/RegisterFirst.dart';
import '../user/RegisterSecond.dart';
import '../user/RegisterThird.dart';
import '../AppBar/AppBardDemo.dart';
import '../TabBarController/TabBarController.dart';
import '../user/user.dart';

//配置路由
final routes = {
  '/': (context, {arguments}) => const MyTabBar(),
  '/search': (context, {arguments}) => SearchPage(argments: arguments),
  '/Product': (context, {arguments}) => ProductPage(arguments: arguments),
  '/productInfo': (context, {arguments}) =>
      ProdutInfoPage(arguments: arguments),
  '/home': (context, {arguments}) => const HomePge(),
  '/login': (context, {arguments}) => const LoginPage(),
  '/registerFirst': (context, {arguments}) => const RegisterFirstPage(),
  '/registerSecond': (context, {arguments}) => const RegisterSecondPage(),
  '/registerThird': (context, {arguments}) => const RegisterThirdPage(),
  '/appBardDemo': (context, {arguments}) => const AppBarDemoPage(),
  '/tabbarController': (context) => TabBarControllerPage(),
  '/user': (context) => const UserPage()
};

//固定写法
// ignore: prefer_function_declarations_over_variables
var onGenerateRoute = (RouteSettings settings) {
  //统一处理
  final String? name = settings.name;
  final Function pageContentBuilder = routes[name] as Function;
  if (settings.arguments != null) {
    final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments));
    return route;
  } else {
    final Route route =
        MaterialPageRoute(builder: (context) => pageContentBuilder(context));
    return route;
  }
};
