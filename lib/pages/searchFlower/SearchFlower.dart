
/// 探花页面
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
      // backgroundColor: Colors.transparent,
      // appBar: AppBar(
      //   title: Text("探花"),
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
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
