/// 交友页面顶部组件
/// Align控件即对齐控件，能将子控件所指定方式对齐，并根据子控件的大小调整自己的大小。
/// Expanded组件是flutter中使用率很高的一个组件，它可以动态调整child组件沿主轴的尺寸，比如填充剩余空间，比如设置尺寸比例。它常常和Row或Column组合起来使用。
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  // 创建Icon图标
  List <Widget> _createIcon(){
    Color color;
    String title = "";
    List<Widget> tempList = [SizedBox(width: 50,)];
    for(int i = 0; i < 3; i++){
      switch (i) {
        case 0:
          color = Colors.red;
          title = "探花";
          break;
        case 1:
          title = "搜附近";
          color = Colors.blue;
          break;
        default:
          title = "测灵魂";
          color = Colors.deepOrangeAccent;
          break;
      }
      tempList.add(Expanded(
        child: GestureDetector(
          child: Column(
              children: <Widget>[
                SizedBox(height: 50,),
                Align(
                  child: Container(
                      width: 60,
                      constraints: BoxConstraints(maxHeight: 60),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: color
                      ),
                      // color: Colors.red,
                      child: Align(
                        child: Container(
                          width: 40,
                          constraints: BoxConstraints(maxHeight: 40),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: new ExactAssetImage("images/${i}.png"),
                                  fit: BoxFit.cover)),
                        ),
                      )
                  ),
                ),
                Text("${title}", style: TextStyle(color: Colors.white),)
              ],
            ),
          onTap: (){
            switch (i) {
              case 0:
                Navigator.pushNamed(context, "/searchFlower");
                break;
              case 1:
                Navigator.pushNamed(context, "/searchNear");
                break;
              case 2:
                Navigator.pushNamed(context, "/testSoul");
                break;
              }

            },
          )
      ));
    }
    tempList.add(SizedBox(width: 50,));
    return tempList;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Container(
        constraints: BoxConstraints(maxHeight: 160),
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new ExactAssetImage("images/img.png"),
              fit: BoxFit.cover)),
          child: Row(
            children: this._createIcon()
          ),
        );
  }
}
