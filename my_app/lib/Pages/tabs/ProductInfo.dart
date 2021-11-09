// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, unused_import
import 'package:flutter/material.dart';

class ProductInfo extends StatefulWidget {
  var arguments;
  ProductInfo({Key? key, this.arguments}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _ProductInfoState createState() => _ProductInfoState(arguments: arguments);
}

class _ProductInfoState extends State<ProductInfo> {
  Map arguments;
  _ProductInfoState({required this.arguments});
  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品详情"),
      ),
      body: Container(
        child: Text("pid= ${arguments["pid"]}"),
      ),
    );
  }
}
