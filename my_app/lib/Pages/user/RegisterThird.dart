// ignore_for_file: no_logic_in_create_state

/*
 * @Author: liuchao
 * @Date: 2021-11-07 23:41:56
 * @LastEditors: liuchao
 * @LastEditTime: 2022-02-08 09:46:15
 * @Description: file content
 */
// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, unused_import
import 'package:flutter/material.dart';
import '../MyTabBar/MyTabBar.dart';

// ignore: must_be_immutable
class RegisterThirdPage extends StatefulWidget {
  const RegisterThirdPage({Key? key}) : super(key: key);

  @override
  _RegisterThirdPagePageState createState() => _RegisterThirdPagePageState();
}

class _RegisterThirdPagePageState extends State<RegisterThirdPage> {
  _RegisterThirdPagePageState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("注册"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              // ignore: prefer_const_constructors
              Text('输入密码完成注册'),
              // ignore: deprecated_member_use
              const SizedBox(height: 40),
              RaisedButton(
                child: const Text("完成"),
                onPressed: () {
                  // Navigator.of(context).pop();
                  //返回根
                  Navigator.of(context).pushAndRemoveUntil(
                      new MaterialPageRoute(
                          builder: (context) => const MyTabBar(index: 2)),
                      (route) => route == null);
                },
              )
            ],
          ),
        ));
  }
}
