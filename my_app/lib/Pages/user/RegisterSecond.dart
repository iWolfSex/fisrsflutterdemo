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
class RegisterSecondPage extends StatefulWidget {
  const RegisterSecondPage({Key? key}) : super(key: key);

  @override
  _RegisterSecondPageState createState() => _RegisterSecondPageState();
}

class _RegisterSecondPageState extends State<RegisterSecondPage> {
  _RegisterSecondPageState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("输入验证码"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              // ignore: prefer_const_constructors
              Text('输入验证码'),
              // ignore: deprecated_member_use
              const SizedBox(height: 40),
              RaisedButton(
                child: const Text("下一步"),
                onPressed: () {
                  Navigator.pushNamed(context, '/registerThird');
                },
              )
            ],
          ),
        ));
  }
}
