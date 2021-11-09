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
      home: TabBar(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class TabBar extends StatefulWidget {
  TabBar({Key? key}) : super(key: key);

  @override
  _TabBarState createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hello Flutter'),
        ),
        body: const Text("tabBar"),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("首页")),
            const BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text("首页")),
            const BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text("首页")),
          ],
        ));
  }
}
