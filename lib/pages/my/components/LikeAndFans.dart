/// 我的关注，粉丝，互相关注组件
import 'package:flutter/material.dart';

class LikeAndFans extends StatefulWidget {
  const LikeAndFans({Key? key}) : super (key: key);

  _LikeAndFansState createState() => _LikeAndFansState();
}

class _LikeAndFansState extends State<LikeAndFans> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)
      ),

      height: 130,
      child: Row(
        children: <Widget>[
          Expanded(child:
            GestureDetector(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("100", style: TextStyle(fontSize: 20, color: Colors.black38),),
                  Text("互相关注", style: TextStyle(fontSize: 20, color: Colors.black38))
                ],
              ),
              onTap: (){
                Navigator.pushNamed(context, "/fansLike",arguments: {"currentIndex": 0});
              },
            )
          ),
          Expanded(child:
          GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("100", style: TextStyle(fontSize: 20, color: Colors.black38)),
                Text("关注", style: TextStyle(fontSize: 20, color: Colors.black38))
              ],
            ),
            onTap: (){

            },
          )
          ),
          Expanded(child:
          GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("100",style: TextStyle(fontSize: 20, color: Colors.black38)),
                Text("粉丝",style: TextStyle(fontSize: 20, color: Colors.black38))
              ],
            ),
            onTap: (){

            },
          )
          )
        ],
      ),
    );
  }
}
