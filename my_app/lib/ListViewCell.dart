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
    return ListView(
      // ignore: prefer_const_literals_to_create_immutables
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Image.network("https://www.itying.com/images/flutter/2.png"),
        Container(
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/1.png"),
        Container(
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/3.png"),
        Container(
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/4.png"),
        Container(
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/5.png"),
        Container(
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        Image.network("https://www.itying.com/images/flutter/6.png"),
        Container(
          child: const Text(
            '我是一个标题',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          height: 60,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
      ],
    );
  }
}
