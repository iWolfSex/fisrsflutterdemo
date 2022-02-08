/*
 * @Author: liuchao
 * @Date: 2021-11-07 16:19:28
 * @LastEditors: liuchao
 * @LastEditTime: 2022-02-08 13:36:31
 * @Description: file content
 */
// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, unused_import
import 'package:flutter/material.dart';
import 'package:my_app/Pages/tabs/Form.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              Expanded(
                  child: TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.red,
                      labelColor: Colors.red,
                      unselectedLabelColor: Colors.white,
                      tabs: <Widget>[
                    Tab(text: '热销'),
                    Tab(text: '热销1'),
                    Tab(text: '热销2'),
                    Tab(text: '热销3'),
                    Tab(text: '推荐4'),
                    Tab(text: '热销5'),
                    Tab(text: '热销6')
                  ]))
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              color: Colors.yellow,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                      child: Text("跳转到表单并且传值"),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (ccontext) => FormPage(title: "表单见面"),
                        ));
                      }),
                ],
              ),
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
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第三个tab'),
                ),
                ListTile(
                  title: Text('第三个tab'),
                ),
                ListTile(
                  title: Text('第三个tab'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第四个tab'),
                ),
                ListTile(
                  title: Text('第四个tab'),
                ),
                ListTile(
                  title: Text('第四个tab'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第四个tab'),
                ),
                ListTile(
                  title: Text('第四个tab'),
                ),
                ListTile(
                  title: Text('第四个tab'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第四个tab'),
                ),
                ListTile(
                  title: Text('第四个tab'),
                ),
                ListTile(
                  title: Text('第四个tab'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第四个tab'),
                ),
                ListTile(
                  title: Text('第四个tab'),
                ),
                ListTile(
                  title: Text('第四个tab'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
