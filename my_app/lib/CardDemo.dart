// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, unused_import

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
    return ListView(
      children: [
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三", style: TextStyle(fontSize: 28)),
                subtitle: Text("3rjkfjdsfal;dskfjakfjkdfsdva;dk"),
              ),
              ListTile(
                title: Text("电话", style: TextStyle(fontSize: 28)),
                subtitle: Text("18375874798"),
              ),
              ListTile(
                title: Text("职位", style: TextStyle(fontSize: 28)),
                subtitle: Text("工程师"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("李四", style: TextStyle(fontSize: 28)),
                subtitle: Text("3rjkfjdsfal;dskfjakfjkdfsdva;dk"),
              ),
              ListTile(
                title: Text("电话", style: TextStyle(fontSize: 28)),
                subtitle: Text("18375874798"),
              ),
              ListTile(
                title: Text("职位", style: TextStyle(fontSize: 28)),
                subtitle: Text("工程师"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("王五", style: TextStyle(fontSize: 28)),
                subtitle: Text("3rjkfjdsfal;dskfjakfjkdfsdva;dk"),
              ),
              ListTile(
                title: Text("电话", style: TextStyle(fontSize: 28)),
                subtitle: Text("18375874798"),
              ),
              ListTile(
                title: Text("职位", style: TextStyle(fontSize: 28)),
                subtitle: Text("工程师"),
              )
            ],
          ),
        ),
      ],
    );
  }
}
