import 'package:flutter/material.dart';
import 'package:flutterTanhua/pages/my/components/ToolsList.dart';
import 'components/Header.dart';
import 'components/LikeAndFans.dart';
class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super (key: key);
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Header(),
            ),
            Positioned(
                left: 20,
                right: 20,
                top: 130,
                child: LikeAndFans()
            ),
            Positioned(
              top: 300,
              left: 0,
              right: 0,
              child: ToolsList()
            )
            // LikeAndFans()
          ],
        ),
      )
    );
  }
}
