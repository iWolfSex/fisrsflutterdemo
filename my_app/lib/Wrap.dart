// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'res/listData.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello Flutter'),
        ),
        body: Homecontent(),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class Homecontent extends StatelessWidget {
  // TODO: implement build
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 600,
      width: 400,
      color: Colors.pink,
      padding: EdgeInsets.all(10),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        // alignment: WrapAlignment.spaceEvenly,
        // runAlignment: WrapAlignment.center,
        children: <Widget>[
          MyText("第一季"),
          MyText("第一季第一季"),
          MyText("第一季"),
          MyText("第一季第一季第一季第一季"),
          MyText("第一季"),
          MyText("第一季"),
          MyText("第一季"),
          MyText("第一季第一季"),
          MyText("第一季"),
          MyText("第一季"),
          MyText("第一季第一季第一季"),
          MyText("第一季"),
          MyText("第一季"),
          MyText("第一季"),
        ],
      ),
    );
  }
}

class MyText extends StatelessWidget {
  late final String title;
  MyText(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: Text(
        this.title,
        style: TextStyle(color: Colors.blue, fontSize: 14.0),
      ),
    );
  }
}
