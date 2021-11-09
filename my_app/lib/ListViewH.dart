import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    return Container(
        height: 180,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 180,
              height: 180,
              color: Colors.red,
            ),
            Container(
              width: 180,
              height: 180,
              color: Colors.white,
              child: ListView(
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
                ],
              ),
            ),
            Container(
              width: 180,
              height: 180,
              color: Colors.red,
            ),
            Container(
              width: 180,
              height: 180,
              color: Colors.grey,
            ),
            Container(
              width: 180,
              height: 180,
              color: Colors.orangeAccent,
            ),
            Container(
              width: 180,
              height: 180,
              color: Colors.blue,
            ),
            Container(
              width: 180,
              height: 180,
              color: Colors.orange,
            ),
            Container(
              width: 180,
              height: 180,
              color: Colors.black,
            ),
            Container(
              width: 180,
              height: 180,
              color: Colors.green,
            ),
          ],
        ));
  }
}
