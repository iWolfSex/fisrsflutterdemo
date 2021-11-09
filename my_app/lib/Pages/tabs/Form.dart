// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, unused_import
import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String title = "表单";
  FormPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const ListTile(
            title: Text("我是表单"),
          ),
          const ListTile(
            title: Text("我是表单"),
          ),
          const ListTile(
            title: Text("我是表单"),
          ),
          const ListTile(
            title: Text("我是表单"),
          ),
          const ListTile(
            title: Text("我是表单"),
          )
        ],
      ),
    );
  }
}
