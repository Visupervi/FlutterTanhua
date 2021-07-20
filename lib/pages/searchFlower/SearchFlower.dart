/// @Author visupervi
/// @Description 探花页面
/// @Date 8:42 上午 2021/7/20
/// @Param
/// @return

import 'package:flutter/material.dart';
import '../components/CommonHeader.dart';
import './components/ImageBgc.dart';
class SearchFlower extends StatefulWidget {
  final arguments;
  const SearchFlower({Key? this.arguments});

  _SearchFlowerState createState() => _SearchFlowerState();
}

class _SearchFlowerState extends State<SearchFlower> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            CommonHeader(title: {"title":"探花"}),
            ImageBgc()
          ],
        ),
      ),
    );
  }
}
