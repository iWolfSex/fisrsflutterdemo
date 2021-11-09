// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'Pages/routes/Routes.dart';

void main() {
  runApp(const MyAapp());
}

class MyAapp extends StatelessWidget {
  const MyAapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return MaterialApp(initialRoute: '/', onGenerateRoute: onGenerateRoute);
  }
}
