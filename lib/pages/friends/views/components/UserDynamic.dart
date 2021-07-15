import 'package:flutter/material.dart';
import '../../../../data/UserDetail.dart';

class UserDynamic extends StatefulWidget {
  final nickName;
  UserDynamic({this.nickName});
  _UserDynamicState createState() => _UserDynamicState(nickName: this.nickName);
}

class _UserDynamicState extends State<UserDynamic> {
  Map nickName;
  _UserDynamicState({required this.nickName});
  List recommendList = userDetail["data"]["result"]["userInfo"]["dynamic"];
  final userInfo = userDetail["data"]["result"]["userInfo"];
  // 动态渲染列表
  List<Widget> _creatRecommendList() {
    List<Widget> tempList = [];
    for (int i = 0; i < recommendList.length; i++) {
      tempList.add(GestureDetector(
        onTap: (){
          // Navigator.pushNamed(context, "/friendDetail",arguments: recommendList[i]);
        },
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 0.5, //宽度
                color: Colors.black12, //边框颜色
              ),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // 上部元素
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage("${nickName["header"]}"),
                        fit: BoxFit.cover)),
                    ),
                  ),
                SizedBox(width: 10,),
                Expanded(
                  child: Row(
                      // mainAxisSize: MainAxisSize.min,
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
                                      Text("${nickName["nickName"]}"),
                                      Icon(
                                        Icons.female,
                                        color: Colors.pink,
                                      ),
                                      Text("${userInfo["age"]}岁"),
                                    ],
                                  ),
                                ),
                                Expanded(child:
                                Text(
                                    "${userInfo["marry"]} ｜ ${userInfo["degree"]} ｜ 年龄相仿",
                                    textAlign: TextAlign.left)
                                )
                              ],
                            ),
                          ),
                          flex: 6,
                        ),
                    ],
                    ),
                  flex: 6,
                  ),
              ],
            ),
            Text("${recommendList[i]["text"]}"),
            Row(
              children: _creatAlbum(recommendList[i]["album"]),
            )
            ],
          )
        ),
      ));
    }
    return tempList;
  }

  // 动态渲染相册

  List<Widget> _creatAlbum(List list) {
    List<Widget> tempList = [];
    for(int i =0; i < list.length; i++) {
      tempList.add(Container(
        padding: EdgeInsets.all(3),
        width: 70,
        height: 70,
        child: Image.network("${list[i]["am"]}", fit: BoxFit.cover,),
      ));
    }
    return tempList;
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
