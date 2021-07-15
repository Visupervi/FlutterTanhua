/// 推荐组件
import 'package:flutter/material.dart';
import '../../../data/Recommend.dart';

class RecommendList extends StatefulWidget {
  final arguments;
  const RecommendList({this.arguments});

  _RecommendListState createState() => _RecommendListState(arguments: this.arguments);
}

class _RecommendListState extends State<RecommendList> {
  Map arguments;
  _RecommendListState({required this.arguments});
  // 动态渲染列表
  List<Widget> _creatRecommendList() {
    List<Widget> tempList = [];
    for (int i = 0; i < recommendList.length; i++) {
      tempList.add(GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, "/friendDetail",arguments: recommendList[i]);
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
                    image: NetworkImage("${recommendList[i]["header"]}"),
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
                                Text("${recommendList[i]["nick_name"]}"),
                                Icon(
                                      Icons.female,
                                      color: Colors.pink,
                                    ),

                                Text("${recommendList[i]["age"]}岁"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                                "${recommendList[i]["marry"]} ｜ ${recommendList[i]["degree"]} ｜ 年龄相仿",
                                textAlign: TextAlign.left)
                          ],
                        ),
                      ),
                      flex: 6,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            this.isIcon(),
                          ],
                        ),
                      ),
                      flex: 2,
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
    return tempList;
  }

  Widget isIcon(){
    String btnText = "";
    if (arguments["isIcon"] == true) {
      return
        Icon(
          Icons.favorite,
          size: 28.0,
          color: Colors.pink,
        );
    } else if (arguments["isIcon"] == false) {
      return
        Icon(
          Icons.brightness_1_sharp,
          size: 28.0,
          color: Colors.pink,
        );
    } else {
      switch(arguments["eachOther"]) {
        case "all":
          btnText = "互相关注";
          break;
        case "like":
          btnText = "已关注";
          break;
        case "fans":
          btnText = "关注";
          break;
      }
      return GestureDetector(
        onTap: (){
          print(btnText);
        },
        child: Center(
          child: Container(
            alignment: Alignment.center,
            constraints: BoxConstraints(maxHeight: 30, maxWidth: 160),
            decoration: BoxDecoration(
                // color: Colors.red,
                border: Border(
                  top: BorderSide(
                    width: 0.5,
                    color: Colors.grey
                  ),
                  bottom: BorderSide(
                        width: 0.5,
                        color: Colors.grey
                    ),
                  right: BorderSide(
                      width: 0.5,
                      color: Colors.grey
                  ),
                  left: BorderSide(
                      width: 0.5,
                      color: Colors.grey
                  ),
                ),
                borderRadius: BorderRadius.circular(4)
            ),
            child: Text(btnText),
          ),
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView(
        children: this._creatRecommendList(),
        ));
  }
}
