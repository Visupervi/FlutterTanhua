/// @Author visupervi
/// @Description 我的动态页面
/// @Date 8:41 上午 2021/7/20
/// @Param
/// @return
import 'package:flutter/material.dart';
import 'package:flutterTanhua/pages/components/CommonHeader.dart';
import 'package:flutterTanhua/pages/friends/views/components/UserDynamic.dart';

class MyDynamic extends StatefulWidget {

  final arguments;
  const MyDynamic({this.arguments}) ;

  _MyDynamicState createState() => _MyDynamicState(arguments: this.arguments);
}

class _MyDynamicState extends State<MyDynamic> {

  Map ? arguments;
  _MyDynamicState({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              CommonHeader(title: {"title":"我的动态"}),
              Expanded(
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: UserDynamic(nickName: {"nickName": "王五", "header":"https://pic4.zhimg.com/v2-016461100d2044d50809b042463afb21_r.jpg?source=1940ef5c",}),
                  ))
            ],
          ),
        )
    );
  }
}
