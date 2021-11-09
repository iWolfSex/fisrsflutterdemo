// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, unused_import
import 'package:flutter/material.dart';
import './Search.dart';

class HomePge extends StatefulWidget {
  const HomePge({Key? key}) : super(key: key);

  @override
  _HomePgeState createState() => _HomePgeState();
}

class _HomePgeState extends State<HomePge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        // ignore: deprecated_member_use
        children: <Widget>[
          RaisedButton(
              child: Text("跳转到搜索界面"),
              onPressed: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => SearchPage()));
                Navigator.pushNamed(context, '/search');
              }),
          SizedBox(height: 20),
          RaisedButton(
              child: Text("跳转到表单并且传值"),
              onPressed: () {
                //自定义路由传值
                Navigator.pushNamed(context, "/productInfo",
                    arguments: {"pid": "123456"});
              }),
        ],
      ),
    );
  }
}
