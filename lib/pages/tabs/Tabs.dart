/// @Author visupervi
/// @Description 自定义Tabs组件
/// @Date 8:50 上午 2021/7/20
/// @Param
/// @return

import 'package:flutter/material.dart';
import '../circle/Circle.dart';
import '../friends/Friends.dart';
import '../message/Messsage.dart';
import '../my/MyPage.dart';

class Tabs extends StatefulWidget {
  const Tabs ({ Key? key }) : super(key: key);
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int currentIndex = 0;
  List pageList = [
    Friends(),
    Circle(),
    Message(),
    MyPage()
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: this.pageList[this.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // 解决tabs超过三个的时候不显示，显示一片白色
        currentIndex: this.currentIndex,
        onTap: (int index){
          // print(index);
          setState(() {
            this.currentIndex = index;
          });
        },
        fixedColor: Colors.purpleAccent,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person_add_alt_1_rounded),
              label: "交友"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.brightness_1_outlined ),
              label: "圈子"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: "消息",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "我的"
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
}

/**
 * @Author visupervi
 * @Description
 * @Date 1:56 下午 2021/7/9
 * @Param
 * @return
 * Flutter中路由的使用
 * 基本路由和命名路由
 * Navigator.of(context).push(
 * MaterialPageRoute(build: (context) => pageRoute()))
 *
 * Navigator.of(context).push()返回路由玩在
 *命名路由---->统一路由管理
 * 需要在根组件中定义
 * Navigator.pushNamed(context, '/routerName')
 */
