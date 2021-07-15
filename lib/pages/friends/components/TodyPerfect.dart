/// 今日最佳组件
import 'package:flutter/material.dart';

class TodyPerfect extends StatefulWidget {
  const TodyPerfect({Key? key}) : super(key: key);

  _TodyPerfectState createState() => _TodyPerfectState();
}

class _TodyPerfectState extends State<TodyPerfect> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                      height: 120,
                      child: Image.network(
                        "https://hbimg.huabanimg.com/7534616738ced0a7ac12519c63a021e582be5be932876-4GPtYj_fw658/format/webp",
                        fit: BoxFit.cover,
                      )),
                  Positioned(
                    child: Container(
                      height: 25,
                      width: 80,
                      decoration: new BoxDecoration(
                          color: Colors.purpleAccent,
                          borderRadius: new BorderRadius.circular((5.0))),
                      alignment: Alignment.center,
                      child: Text(
                        "今日佳人",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    left: 0,
                    bottom: 5,
                  )
                ],
              ),
              flex: 1,
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(child: Text("狸花猫")),
                              Expanded(
                                child: Icon(
                                Icons.female,
                                color: Colors.pink,
                              )),
                              Expanded(child: Text("18岁")),
                              SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                          Text("单身 ｜ 本科 ｜ 年龄相仿")
                        ],
                      ),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.favorite,
                            size: 28.0,
                            color: Colors.pink,
                          ),
                          Text("缘分值")
                        ],
                      ),
                      height: 100,
                    ),
                    flex: 1,
                  )
                ],
              ),
              flex: 2,
            )
          ],
        ));
  }
}

///             child: Image.network("https://pic.netbian.com/uploads/allimg/210706/005422-1625504062d56f.jpg"),
