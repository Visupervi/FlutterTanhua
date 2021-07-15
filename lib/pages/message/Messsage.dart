import 'package:flutter/material.dart';
import 'package:flutterTanhua/pages/components/CrossLine.dart';
import 'package:flutterTanhua/pages/friends/components/RecommendList.dart';
class Message extends StatefulWidget {
  const Message({Key? key}) : super (key: key);
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.purple,
              Colors.deepOrange,
            ], begin: Alignment.centerLeft, end: Alignment.centerRight),
          ),
        ),
        title: Text("消息"),
      ),
      body: Column(
        children: <Widget>[
          Align(
            child: Container(
                padding: EdgeInsets.all(8),
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          constraints: BoxConstraints(maxHeight: 60),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.amber
                          ),
                          child: Icon(Icons.source_outlined, color: Colors.white,),

                        ),
                        Text("全部")
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          constraints: BoxConstraints(maxHeight: 60),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.deepOrange
                          ),
                          child: Icon(Icons.recommend_outlined , color: Colors.white,),
                        ),
                        Text("点赞")
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          constraints: BoxConstraints(maxHeight: 60),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.lightBlueAccent
                          ),
                          child: Icon(Icons.message_outlined, color: Colors.white,),

                        ),
                        Text("评论")
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          width: 60,
                          constraints: BoxConstraints(maxHeight: 60),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.greenAccent
                          ),
                          child: Icon(Icons.favorite_border_outlined, color: Colors.white,),

                        ),
                        Text("喜欢")
                      ],
                    )
                  ],
                )
            ),
          ),
          CrossLine(arguments: {"text":"", "height": 2.0},),

          Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: RecommendList(arguments: {"isIcon": false},),
              ))
        ],
      )
    );
  }
}
