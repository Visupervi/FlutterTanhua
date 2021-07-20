/// @Author visupervi
/// @Description 圈子页面
/// @Date 2:04 下午 2021/7/9
/// @Param
/// @return
import 'package:flutter/material.dart';
import 'views/CircleList.dart';
class Circle extends StatefulWidget {
  const Circle({Key? key}) : super (key: key);
  _CircleState createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CircleList();
  }
}
