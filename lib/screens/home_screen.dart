import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //マテリアルデザイン適用
      appBar: AppBar(
        title: Text("初アプリ"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),//端から全方向に8.0のpadding
        child: Column(
          //子要素を縦に並べる
          children: [
            Center(child: Text("名前を入れてね", style: TextStyle(fontSize: 25.0))),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 20.0),
              controller: null, //todo
            ),
            Expanded(child: Image.asset("assets/images/hello.png")),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: null,
                    child: Text("おしねて", style: TextStyle(fontSize: 20.0))
                )
            )
          ],
        ),
      ),
    );
  }
}
