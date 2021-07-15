/// 此组件是为页面添加分割用的，属于状态组件，可以给此组件传值
/// 参数height是分割线的高度
/// 参数text是分割块中的文字
import 'package:flutter/material.dart';

class CrossLine extends StatefulWidget {
  final arguments;
  const CrossLine({this.arguments});

  _CrossLineState createState() => _CrossLineState(arguments: this.arguments);
}

class _CrossLineState extends State<CrossLine> {
  Map arguments;
  _CrossLineState({required this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      constraints: BoxConstraints(maxHeight: arguments["height"]),
      // height: arguments["height"],
      width: double.infinity,
      color: Colors.black12,
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[Expanded(child: Text("${arguments["text"]}"))],
      ),
    );
  }
}
