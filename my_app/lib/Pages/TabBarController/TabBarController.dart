/*
 * @Author: liuchao
 * @Date: 2022-02-08 13:46:55
 * @LastEditors: liuchao
 * @LastEditTime: 2022-02-08 14:24:16
 * @Description: file content
 */
import 'dart:ffi';

import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key? key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void dispose() {
    //生命周期函数 组件销毁的时候调用
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarControllerPage'),
        bottom: TabBar(
          controller: this._tabController,
          tabs: <Widget>[Tab(text: '热销'), Tab(text: '推荐')],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: Text("热销"),
          ),
          Center(
            child: Text("推荐"),
          )
        ],
      ),
    );
  }
}
