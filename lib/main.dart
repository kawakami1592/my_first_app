import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "初アプリ",
      debugShowCheckedModeBanner: false,//デモバナーを非表示にする
      theme: ThemeData.dark(),//ダークモード
      home: HomeScreen(),
    );
  }
}
