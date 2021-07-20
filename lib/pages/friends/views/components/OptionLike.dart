/// @Author visupervi
/// @Description 交友操作组件
/// @Date 8:32 上午 2021/7/20
/// @Param
/// @return

import 'package:flutter/material.dart';
import 'package:flutterTanhua/pages/components/LineGradientButton.dart';

class OptionLike extends StatefulWidget {
  const OptionLike({Key? key}) : super (key: key);

  _OptionLikeState createState() => _OptionLikeState();
}

class _OptionLikeState extends State<OptionLike> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 50,
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Row(
        children: <Widget>[
          Expanded(child:
            Row(
              children: <Widget>[
                Text("动态"),
                Icon(
                  Icons.brightness_1_sharp,
                  size: 20.0,
                  color: Colors.pink,
                ),
              ],
            )
          ),
          Expanded(child:
            Row(
              children: <Widget>[
                Expanded(child:
                  LineGradientButton(
                    ()=>{},
                      arguments:{
                        "wd": 100.0,
                        "ht": 30.0,
                        "src": "images/headbg.png",
                        "text": "撩一下"})
                ),
                SizedBox(width: 10,),
                Expanded(child:
                LineGradientButton(
                  ()=>{},
                    arguments:{
                      "wd": 100.0,
                      "ht": 30.0,
                      "src": "images/headbg.png",
                      "text": "喜欢"})
                )
              ],
            ))
        ],
      ),
    );
  }
}
