/*
 * @Author: liuchao
 * @Date: 2021-11-07 23:41:56
 * @LastEditors: liuchao
 * @LastEditTime: 2022-02-07 15:08:55
 * @Description: file content
 */
// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, unused_import
import 'package:flutter/material.dart';

class ProdutInfoPage extends StatefulWidget {
  Map arguments;
  ProdutInfoPage({Key? key, required this.arguments}) : super(key: key);

  @override
  _ProdutInfoPageState createState() =>
      _ProdutInfoPageState(arguments: this.arguments);
}

class _ProdutInfoPageState extends State<ProdutInfoPage> {
  Map arguments;
  _ProdutInfoPageState({required this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情页面"),
      ),
      body: Container(
        child: Text("pid=${arguments["pid"]}"),
      ),
    );
  }
}
