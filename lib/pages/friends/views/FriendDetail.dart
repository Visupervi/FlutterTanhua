
/// 交友详情页面
import 'package:flutter/material.dart';
import 'package:flutterTanhua/pages/components/CommonHeader.dart';
import 'package:flutterTanhua/pages/components/CrossLine.dart';
import 'package:flutterTanhua/pages/friends/views/components/UserDynamic.dart';
import '../components/CarouseBanner.dart';
import 'components/UserInfo.dart';
import 'components/OptionLike.dart';
class FriendDetail extends StatefulWidget {
  final arguments;
  const FriendDetail({this.arguments});

  _FriendDetailState createState() => _FriendDetailState(arguments: this.arguments);
}

class _FriendDetailState extends State<FriendDetail> {
  Map ? arguments;
  _FriendDetailState({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            // app头部设置
            CommonHeader(title: {"title":"${arguments!["nick_name"]}"}),
            // 轮播图设置
            CarouseBanner(),
            // 基本信息设置
            UserInfo(),
            // 分割线
            CrossLine(arguments: {"text": '',"height": 1.0 },),
            // 操作小部件
            OptionLike(),
            CrossLine(arguments: {"text": '',"height": 1.0 },),
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: UserDynamic(nickName: {"nickName": "${arguments!["nick_name"]}", "header": "${arguments!["header"]}",}),
                ))

          ],
        ),
      ),
    );
  }
}
