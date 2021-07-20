/// @Author visupervi
/// @Description 谁看过我页面
/// @Date 8:41 上午 2021/7/20
/// @Param
/// @return

import 'package:flutter/material.dart';
import 'package:flutterTanhua/pages/components/CommonHeader.dart';
import 'package:flutterTanhua/pages/friends/components/RecommendList.dart';

class PersonVisit extends StatefulWidget {
  final arguments;
  const PersonVisit({this.arguments});

  _PersonVisitState createState() => _PersonVisitState(arguments: this.arguments);
}

class _PersonVisitState extends State<PersonVisit> {
  Map ? arguments;
  _PersonVisitState({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              CommonHeader(title: {"title":"谁看过我"}),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: RecommendList(arguments: {"isIcon": true},),
                  ))
            ],
          ),
        )
    );
  }
}
