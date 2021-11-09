// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, unused_import
import 'package:flutter/material.dart';
import '../tabs/Home.dart';
import '../tabs/Category.dart';
import '../tabs/Setting.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  int _currentIndex = 0;
  final List _pageList = [
    const HomePge(),
    const CategoryPage(),
    const SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hello Flutter'),
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          iconSize: 36.0,
          fixedColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("首页")),
            const BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text("分类")),
            const BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text("设置")),
          ],
        ));
  }
}
