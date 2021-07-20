/// @Author visupervi
/// @Description 用户信息组件
/// @Date 8:33 上午 2021/7/20
/// @Param
/// @return


import 'package:flutter/material.dart';
import '../../../../data/UserDetail.dart';
class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super (key: key);

  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(5),
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
                          // mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("${userDetail["data"]["result"]["userInfo"]["nick_name"]}"),
                            Icon(
                              Icons.female,
                              color: Colors.pink,
                            ),
                            Expanded(
                                child:
                                Text("${userDetail["data"]["result"]["userInfo"]["age"]}岁")),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                      Text(
                          "${userDetail["data"]["result"]["userInfo"]["marry"]} ｜ ${userDetail["data"]["result"]["userInfo"]["degree"]} ｜ 年龄相仿",
                          textAlign: TextAlign.left)
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
                        Icons.favorite,
                        size: 40.0,
                        color: Colors.pink,
                      ),
                    ],
                  ),
                  height: 60,
                ),
                flex: 1,
              )
            ],
          ),
          ),
          flex: 6,
        ),
      ],
    );
  }
}
