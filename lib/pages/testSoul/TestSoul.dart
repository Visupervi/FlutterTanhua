/// 测灵魂页面
import 'package:flutter/material.dart';
import 'package:flutterTanhua/pages/components/CommonHeader.dart';
import 'package:flutterTanhua/pages/components/LineGradientButton.dart';
import '../searchFlower/components/ImageBgc.dart';
class TestSoul extends StatefulWidget {
  final arguments;
  const TestSoul({Key? this.arguments});

  _TestSoulState createState() => _TestSoulState();
}

class _TestSoulState extends State<TestSoul> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Container(
        child: Column(
          children: <Widget>[
            CommonHeader(title: {"title":"测灵魂"}),
            ImageBgc(),
            Stack(
              children: [
                LineGradientButton(
                  ()=>{Navigator.pushNamed(context, "/questionList")},
                  arguments:{
                    "wd": 160.0,
                    "ht": 40.0,
                    "src": "images/headbg.png",
                    "text": "开始测试"})
              ],
            )
          ],
        ),
      ),
    );
  }
}
