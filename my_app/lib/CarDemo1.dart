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
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9.0,
                child: Image.network(
                  "https://www.itying.com/images/flutter/1.png",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://www.itying.com/images/flutter/1.png",
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ),
                ),
                title: Text("zhangs"),
                subtitle: Text("sfsjfal;dfsfdskfjka;"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9.0,
                child: Image.network(
                  "https://www.itying.com/images/flutter/1.png",
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://www.itying.com/images/flutter/1.png",
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ),
                ),
                title: Text("zhangs"),
                subtitle: Text("sfsjfal;dfsfdskfjka;"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9.0,
                child: Image.network(
                  "https://www.itying.com/images/flutter/1.png",
                  fit: BoxFit.cover,
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://www.itying.com/images/flutter/1.png"),
                ),
                title: Text("zhangs"),
                subtitle: Text("sfsjfal;dfsfdskfjka;"),
              )
            ],
          ),
        )
      ],
    );
  }
}
