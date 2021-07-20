/// @Author visupervi
/// @Description 背景组件
/// @Date 8:44 上午 2021/7/20
/// @Param
/// @return
import 'package:flutter/material.dart';
import 'MySwiper.dart';
class ImageBgc extends StatefulWidget {
  const ImageBgc({Key? key}) : super (key: key);

  _ImageBgcState createState() => _ImageBgcState();
}

class _ImageBgcState extends State<ImageBgc> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        constraints: BoxConstraints(maxHeight: 600),
    width: double.infinity,
    alignment: Alignment.center,
    decoration: BoxDecoration(
    image: DecorationImage(
    image: new ExactAssetImage("images/testsoul_bg.png"), fit: BoxFit.cover)),
    child: MySwiper(arguments: {"dataFlag": "flower"},),
    );
  }
}
