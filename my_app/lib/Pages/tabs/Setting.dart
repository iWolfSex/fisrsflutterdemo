// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, unused_import
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        // ignore: deprecated_member_use
        children: <Widget>[
          RaisedButton(
              child: Text("跳转到登录页面"),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              }),
          SizedBox(height: 20),
          RaisedButton(
              child: Text("跳转到注册页面"),
              onPressed: () {
                Navigator.pushNamed(context, '/registerFirst');
              }),
        ],
      ),
    );
  }
}
