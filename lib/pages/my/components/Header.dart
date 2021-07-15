
/// 我的头部组件不需要状态
/// 应该使用StatelessWidget
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super (key: key);

  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      constraints: BoxConstraints(maxHeight: 150),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.purple,
          Colors.deepOrange,
        ], begin: Alignment.centerLeft, end: Alignment.centerRight),
      ),
      child: GestureDetector(
        onTap: (){
        },
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 0.5, //宽度
                color: Colors.black12, //边框颜色
              ),
            ),
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Align(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  constraints: BoxConstraints(maxHeight: 60, maxWidth: 60),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: NetworkImage('https://tse1-mm.cn.bing.net/th/id/R-C.9fc7f358a34e25d4579bbdc83bd01997?rik=s2TKIPtUROZlvQ&riu=http%3a%2f%2fwww.desktx.com%2fd%2ffile%2fwallpaper%2fscenery%2f20170322%2f949d9caee3cde8a202a573abbfb34078.jpg&ehk=ix90h04lbA2wEZbV6O6g2KLHbMu7mNo8f2%2fsM7LSXUg%3d&risl=&pid=ImgRaw',
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("若只如初现", style: TextStyle(color: Colors.white, fontSize: 20),),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),

                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.female,
                                          color: Colors.pink,
                                        ),

                                        Text("20岁"),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                            Row(
                             children: <Widget>[
                               Icon(
                                 Icons.location_on,
                                 color: Colors.white,
                               ),
                               Text("上海", style: TextStyle(color: Colors.white),)
                             ],
                           )
                            // Text(
                            //     "单身 ｜ 本科 ｜ 年龄相仿",
                            //     textAlign: TextAlign.left)
                          ],
                        ),
                      ),
                      flex: 6,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.article_rounded,
                              size: 28.0,
                              color: Colors.white,
                            )
                          ],
                        ),
                        height: 60,
                      ),
                      flex: 1,
                    )
                  ],
                ),
                flex: 6,
              ),
            ],
          ),
        ),
      ));
  }
}
