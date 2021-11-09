// ignore_for_file: deprecated_member_use, unnecessary_this

import 'package:flutter/material.dart';

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
        body: HomePage(),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: this.list.map((vale) {
            return ListTile(
              title: Text(vale),
            );
          }).toList(),
        ),
        SizedBox(height: 20),
        RaisedButton(
            child: Text("按钮"),
            onPressed: () {
              setState(() {
                this.list.add("我是数据");
              });
            }),
      ],
    );
  }
}
