/*
 * @Author: liuchao
 * @Date: 2022-02-08 14:58:21
 * @LastEditors: liuchao
 * @LastEditTime: 2022-02-08 16:11:32
 * @Description: file content
 */

import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("用户中心"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: Text('普通按钮'),
                  color: Colors.blue, //背景颜色
                  textColor: Colors.white, //字体颜色
                  elevation: 10, //阴影
                  onPressed: () {
                    print("普通按钮");
                  })
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 200,
                child: RaisedButton(
                    child: Text('普通按钮'),
                    color: Colors.blue, //背景颜色
                    textColor: Colors.white, //字体颜色
                    elevation: 10, //阴影
                    onPressed: () {
                      print("普通按钮");
                    }),
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Container(
                height: 40,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                    child: Text('自适应按钮'),
                    color: Colors.blue, //背景颜色
                    textColor: Colors.white, //字体颜色
                    elevation: 10, //阴影
                    onPressed: () {
                      print("普通按钮");
                    }),
              ))
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Container(
                height: 40,
                margin: EdgeInsets.all(10),
                child: RaisedButton.icon(
                    icon: Icon(Icons.search),
                    label: Text('带图标按钮'),
                    color: Colors.blue, //背景颜色
                    textColor: Colors.white, //字体颜色
                    elevation: 10, //阴影
                    onPressed: () {
                      print("带图标按钮");
                    }),
              ))
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: Text('圆角按钮按钮'),
                  color: Colors.blue, //背景颜色
                  textColor: Colors.white, //字体颜色
                  elevation: 10, //阴影
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    print("圆角按钮按钮");
                  }),
              Container(
                height: 80,
                child: RaisedButton(
                    child: Text('圆形按钮按钮'),
                    color: Colors.blue, //背景颜色
                    textColor: Colors.white, //字体颜色
                    elevation: 10, //阴影
                    splashColor: Colors.grey,
                    shape: CircleBorder(side: BorderSide(color: Colors.white)),
                    onPressed: () {
                      print("圆形按钮按钮");
                    }),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlineButton(
                  color: Colors.blue,
                  textColor: Colors.green,
                  onPressed: () {
                    print("线型按钮");
                  },
                  child: Text("线型按钮")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                      child: Text('带图标按钮'),
                      color: Colors.blue, //背景颜色
                      textColor: Colors.white, //字体颜色
                      elevation: 10, //阴影
                      onPressed: () {
                        print("带图标按钮");
                      }),
                  RaisedButton(
                      child: Text('带图标按钮'),
                      color: Colors.blue, //背景颜色
                      textColor: Colors.white, //字体颜色
                      elevation: 10, //阴影
                      onPressed: () {
                        print("带图标按钮");
                      }),
                  MyButton(
                    text: "自定义按钮",
                    height: 40.0,
                    width: 100.0,
                    pressed: () {
                      print("自定义按钮");
                    },
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

//自定义组件
class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final width;
  final height;
  const MyButton(
      {this.text = '', this.pressed = null, this.width = 80, this.height = 30});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}
