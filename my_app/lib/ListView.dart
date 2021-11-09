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
      children: const <Widget>[
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.yellow,
          ),
          title: Text('123456'),
          subtitle: Text('111111111111111111111'),
        ),
        ListTile(
          title: Text('123456'),
          subtitle: Text('111111111111111111111'),
          trailing: Icon(
            Icons.settings,
            color: Colors.red,
          ),
        ),
        ListTile(
          title: Text('123456'),
          subtitle: Text('111111111111111111111'),
        ),
        ListTile(
          title: Text('123456'),
          subtitle: Text('111111111111111111111'),
        ),
        ListTile(
          title: Text('123456'),
          subtitle: Text('111111111111111111111'),
        ),
      ],
    );
  }
}
