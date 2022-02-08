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

class ProductPage extends StatefulWidget {
  var arguments;
  ProductPage({Key? key, this.arguments}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _ProductPageState createState() => _ProductPageState(arguments: arguments);
}

class _ProductPageState extends State<ProductPage> {
  Map arguments;
  _ProductPageState({required this.arguments});
  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品页面"),
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            // ignore: deprecated_member_use
            children: <Widget>[
              Text("pid= ${arguments["pid"]}"),
              RaisedButton(
                  child: Text("跳转到商品详情页面并且传值"),
                  onPressed: () {
                    //自定义路由传值
                    Navigator.pushNamed(context, "/productInfo",
                        arguments: {"pid": "7890000000990098"});
                  }),
            ],
          )),
    );
  }
}
