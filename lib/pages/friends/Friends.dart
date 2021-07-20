
/// @Author visupervi
/// @Description 交友首页页面
/// @Date 8:30 上午 2021/7/20
/// @Param
/// @return

import 'package:flutter/material.dart';
import 'components/Header.dart';
import 'components/NearLook.dart';
import 'components/TodyPerfect.dart';
import 'components/RecommendList.dart';
import '../components/CrossLine.dart';

class Friends extends StatefulWidget {
  const Friends({Key? key}) : super(key: key);
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: Column(
        children: <Widget>[
          Header(),
          NearLook(),
          CrossLine(arguments: {"text": "", "height": 5.0}),
          TodyPerfect(),
          CrossLine(arguments: {"text": "推荐", "height": 40.0}),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(10),
            child: RecommendList(arguments: {"isIcon": true},),
          ))
        ],
      ),
    );
  }
}
