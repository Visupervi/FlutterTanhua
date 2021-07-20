/// @Author visupervi
/// @Description 搜附近页面
/// @Date 8:45 上午 2021/7/20
/// @Param
/// @return

import 'package:flutter/material.dart';
import '../components/CommonHeader.dart';
import 'components/NearPersonList.dart';
class SearchNear extends StatefulWidget {
  final arguments;
  const SearchNear({Key? this.arguments});

  _SearchNearState createState() => _SearchNearState();
}
class _SearchNearState extends State<SearchNear> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: new ExactAssetImage("images/search.gif"), fit: BoxFit.cover)),
        child: Column(
          children: <Widget>[

            CommonHeader(title: {"title":"搜附近"}),
            Expanded(
              child: NearPersonList()
            )
          ],
        ),
      ),
    );
  }
}
