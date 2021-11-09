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
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0, //水平子widget之间的间距
      mainAxisSpacing: 10.0, //垂直子widget之间的间距
      padding: EdgeInsets.all(10),
      // childAspectRatio: 0.7, // 宽度和高度的比例
      children: this.getListData(),
    );
  }

  List<Widget> getListData() {
    var tempList = listData.map((value) {
      return Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            SizedBox(height: 10),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        decoration: BoxDecoration(
            border: Border.all(
          color: Color.fromARGB(233, 233, 233, 1),
        )),
      );
    });
    return tempList.toList();
  }
}
