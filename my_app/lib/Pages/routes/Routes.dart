// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';

import '../tabs/Search.dart';
import '../tabs/Home.dart';
import 'package:my_app/Pages/tabs/Form.dart';
import '../MyTabBar/MyTabBar.dart';
import '../tabs/ProductInfo.dart';

final routes = {
  '/': (context, {arguments}) => const MyTabBar(),
  '/search': (context, {arguments}) => SearchPage(argments: arguments),
  '/productInfo': (context, {arguments}) => ProductInfo(arguments: arguments),
  // ignore: non_constant_identifier_names
  '/home': (context, {arguments}) => const HomePge(),
};

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
