import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _textHeader = "あなたの名前は？";
  TextEditingController _textEditingController =
      TextEditingController(); //入力された文字の処理を動的にするコントローラ
  Widget _imageWidget = Container(); //初期値は空の箱

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //マテリアルデザイン適用
      appBar: AppBar(
        title: Text("初アプリ"),
        centerTitle: true,
      ),
      body: Container(
        //ただの箱
        padding: EdgeInsets.all(8.0), //端から全方向に8.0のpadding
        child: Column(
          //子要素を縦に並べる
          children: [
            Center(
              child: Text(
                _textHeader,
                style: TextStyle(fontSize: 25.0),
              ),
            ),
            //子要素を中央よせに
            TextField(
              //入力欄
              keyboardType: TextInputType.text, //キーボードのタイプ
              style: TextStyle(fontSize: 20.0),
              controller: _textEditingController, //入力された文字の処理
            ),
            Expanded(child: _imageWidget),
            //子要素を引き伸ばす
            SizedBox(
              //サイズをもったBox
              width: double.infinity, //親の幅いっぱい
              child: ElevatedButton(
                //ボタン
                onPressed: () => _onClick(), //ボタンを押した時の処理
                child: Text(
                  "おしねて",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onClick() {
    //ボタンを押した時の処理
    setState(() {
      //値をセットしbuild()を動かす
      var inputText = _textEditingController.text; //ローカル変数　入力された文字を取得
      _textHeader = "こんにちは!$inputTextさん";
      _imageWidget =
          Image.asset("assets/images/hello.png"); //assetフォルダの中の画像を表示する
          // Image.network(パス);
    });
  }
}
