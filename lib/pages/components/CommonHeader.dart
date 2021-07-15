/// 自定义app头部， 默认返回上一页
/// 参数 title：header显示的文字
import 'package:flutter/material.dart';

class CommonHeader extends StatefulWidget {
  final title;

  const CommonHeader({this.title});

  _CommonHeaderState createState() => _CommonHeaderState(title: this.title);
}

class _CommonHeaderState extends State<CommonHeader> {
  Map title;

  _CommonHeaderState({required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        constraints: BoxConstraints(maxHeight: 80),
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: new ExactAssetImage("images/headbg.png"),
                fit: BoxFit.cover)),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              left: 10,
              bottom: 15,
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context, true);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                )),
            Positioned(
              bottom: 0,
              child: Container(
                constraints: BoxConstraints(maxHeight: 50),
                alignment: Alignment.center,
                child: Text(
                  "${title["title"]}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ));
  }
}
