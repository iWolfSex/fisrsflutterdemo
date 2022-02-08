/*
 * @Author: liuchao
 * @Date: 2022-02-08 09:49:56
 * @LastEditors: liuchao
 * @LastEditTime: 2022-02-08 11:10:53
 * @Description: file content
 */
import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  const AppBarDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text('AppBarDemoPage'),
              backgroundColor: Colors.red,
              centerTitle: true,
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.menu)),
              actions: <Widget>[
                IconButton(
                    onPressed: () {
                      print('search');
                    },
                    icon: Icon(Icons.search)),
                IconButton(
                    onPressed: () {
                      print('settings');
                    },
                    icon: Icon(Icons.settings))
              ],
              bottom: TabBar(tabs: <Widget>[Tab(text: '热门'), Tab(text: '推荐')]),
            ),
            body: TabBarView(
              children: <Widget>[
                ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text('第一个tab'),
                    ),
                    ListTile(
                      title: Text('第一个tab'),
                    ),
                    ListTile(
                      title: Text('第一个tab'),
                    ),
                    ListTile(
                      title: Text('第一个tab'),
                    )
                  ],
                ),
                ListView(
                  children: <Widget>[
                    ListTile(
                      title: Text('第二个tab'),
                    ),
                    ListTile(
                      title: Text('第二个tab'),
                    ),
                    ListTile(
                      title: Text('第二个tab'),
                    )
                  ],
                )
              ],
            )));
  }
}
