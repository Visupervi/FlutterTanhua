/// @Author visupervi
/// @Description 渐变按钮组件
/// @Date 8:29 上午 2021/7/20
/// @Param 参数：wh: 宽度 double 参数 ht: 高度 double 参数 src: 按钮背景图片，用来设置按钮渐变色 参数 text: 按钮需要显示的文字
/// @return

import 'package:flutter/material.dart';

typedef OnPressedChangeState();
class LineGradientButton extends StatefulWidget {
  final OnPressedChangeState ? onPressedChangeState;
  final arguments;
  LineGradientButton(this.onPressedChangeState, {this.arguments});

  _LineGradientButtonState createState() => _LineGradientButtonState(this.onPressedChangeState, arguments:this.arguments);
}

class _LineGradientButtonState extends State<LineGradientButton> {
  Map ? arguments;
  OnPressedChangeState ? onPressedChangeState;
  _LineGradientButtonState(this.onPressedChangeState, {this.arguments});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print(arguments!["src"]);
    return GestureDetector(
      child: Container(
        width: arguments !["wd"],
        height: arguments !["ht"],
        // constraints: BoxConstraints(),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: new ExactAssetImage(arguments!["src"]),
                fit: BoxFit.cover)),
        child: Text("${arguments!["text"]}", style: TextStyle(color: Colors.white, fontSize: 18),),
      ),
      onTap: onPressedChangeState,
    );
  }
}
