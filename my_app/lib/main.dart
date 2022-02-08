/*
 * @Author: liuchao
 * @Date: 2021-10-27 21:52:10
 * @LastEditors: liuchao
 * @LastEditTime: 2022-02-08 10:18:21
 * @Description: file content
 */
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'Pages/routes/Routes.dart';

void main() {
  runApp(const MyAapp());
}

class MyAapp extends StatelessWidget {
  const MyAapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: onGenerateRoute);
  }
}
