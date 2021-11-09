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
        body: const Homecontent(),
      ),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class Homecontent extends StatelessWidget {
  const Homecontent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Center(
      child: Container(
        child: const Text(
          '我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本',
          textAlign: TextAlign.right,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textScaleFactor: 1.8,
          style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.lineThrough),
        ),
        height: 300,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            border: Border.all(color: Colors.blue, width: 2.0)),
        padding: const EdgeInsets.all(20),
        // transform: Matrix4.translationValues(100, 0, 0),
        // transform: Matrix4.rotationZ(0.3),
        alignment: Alignment.bottomLeft,
      ),
    );
  }
}
