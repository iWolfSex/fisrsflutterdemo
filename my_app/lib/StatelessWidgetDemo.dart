// ignore_for_file: deprecated_member_use

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

class Homecontent extends StatelessWidget {
  Homecontent({Key? key}) : super(key: key);
  int countNum = 1;
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Column(
      children: <Widget>[
        const SizedBox(height: 100),
        // ignore: unnecessary_brace_in_string_interps
        Text("${countNum}"),
        const SizedBox(height: 20),
        RaisedButton(
          child: const Text("按钮"),
          onPressed: () {
            countNum++;
            // ignore: avoid_print
            print(countNum);
          },
        )
      ],
    );
  }
}

//自定义有状态组件
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 200),
        Chip(label: Text('${countNum}')),
        SizedBox(height: 20),
        RaisedButton(
            child: Text('按钮'),
            onPressed: () {
              setState(() {
                this.countNum++;
              });
            })
      ],
    );
  }
}
