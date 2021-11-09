// ignore_for_file: prefer_const_literals_to_create_immutables

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
  List list = [];
  Homecontent() {
    for (var i = 0; i < 20; i++) {
      this.list.add("我是第$i条数据");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.list.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(this.list[index]),
        );
      },
    );
  }
}
