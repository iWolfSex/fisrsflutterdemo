// ignore_for_file: no_logic_in_create_state

/*
 * @Author: liuchao
 * @Date: 2021-11-07 23:41:56
 * @LastEditors: liuchao
 * @LastEditTime: 2022-02-07 15:08:55
 * @Description: file content
 */
// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, unused_import
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RegisterFirstPage extends StatefulWidget {
  const RegisterFirstPage({Key? key}) : super(key: key);

  @override
  _RegisterFirstPageState createState() => _RegisterFirstPageState();
}

class _RegisterFirstPageState extends State<RegisterFirstPage> {
  _RegisterFirstPageState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("获取验证码"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              // ignore: prefer_const_constructors
              Text('这是一个登录页面，点击登录会执行登录操作'),
              // ignore: deprecated_member_use
              RaisedButton(
                child: const Text("获取验证码"),
                onPressed: () {
                  Navigator.pushNamed(context, '/registerSecond');
                  // Navigator.of(context).pushReplacementNamed('/registerSecond'); //替换路由
                },
              )
            ],
          ),
        ));
  }
}
