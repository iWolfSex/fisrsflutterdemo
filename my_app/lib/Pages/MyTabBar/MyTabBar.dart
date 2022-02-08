/*
 * @Author: liuchao
 * @Date: 2021-11-07 15:44:40
 * @LastEditors: liuchao
 * @LastEditTime: 2022-02-08 15:07:42
 * @Description: file content
 */
// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, unused_import
import 'package:flutter/material.dart';
import '../tabs/Home.dart';
import '../tabs/Category.dart';
import '../tabs/Setting.dart';

class MyTabBar extends StatefulWidget {
  final index;
  const MyTabBar({Key? key, this.index = 0}) : super(key: key);

  @override
  _MyTabBarState createState() => _MyTabBarState(this.index);
}

class _MyTabBarState extends State<MyTabBar> {
  int _currentIndex = 0;
  _MyTabBarState(index) {
    this._currentIndex = index;
  }
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
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: DrawerHeader(
                        child: Text("你好flutter"),
                        decoration: BoxDecoration(
                            // color: Colors.yellow),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.itying.com/images/flutter/2.png"),
                                fit: BoxFit.cover))))
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('我的空间'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text('用户中心'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置中心'),
            )
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: UserAccountsDrawerHeader(
                        accountName: Text("大地老师"),
                        accountEmail: Text("dadi@itying.com"),
                        currentAccountPicture: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://www.itying.com/images/flutter/2.png"),
                        ),
                        decoration: BoxDecoration(
                            // color: Colors.yellow),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.itying.com/images/flutter/3.png"),
                                fit: BoxFit.cover)))),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text('我的空间'),
              onTap: () {
                Navigator.of(context).pop(); //隐藏侧边栏
                Navigator.pushNamed(context, '/user');
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text('用户中心'),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text('设置中心'),
            )
          ],
        ),
      ),
    );
  }
}
