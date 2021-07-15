import 'package:flutter/material.dart';
import 'package:flutterTanhua/pages/components/CrossLine.dart';

class ToolsList extends StatefulWidget {
  const ToolsList({Key? key}) : super (key: key);

  _ToolsListState createState() => _ToolsListState();
}

class _ToolsListState extends State<ToolsList> {
  final List toolList = [
    {
      "text": "我的动态",
      "icon": Icons.star,
      "url":"/myDynamic",
      "color": Colors.green
    },
    {
      "text": "谁看过我",
      "icon": Icons.remove_red_eye_outlined,
      "url":"/personVisit",
      "color": Colors.red
    },
    {
      "text": "通用设置",
      "icon": Icons.settings,
      "url":"/settings",
      "color": Colors.deepPurple
    },
    {
      "text": "在线客服",
      "icon": Icons.people_outline,
      "color": Colors.blueAccent,
      "url":""
    }
  ];

  List <Widget> _createToolsList (context) {
    List <Widget> tempList = [];
    for(int i = 0; i < toolList.length; i++){
      tempList.add(
        GestureDetector(
          onTap: (){
            print(toolList[i]!["url"]);
            print("*********************");
            Navigator.pushNamed(context, toolList[i]!["url"]);
            },
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(child:
                    Row(
                      children: <Widget>[
                        Icon(
                          toolList[i]["icon"],
                          color: toolList[i]["color"],
                        ),
                        SizedBox(width: 5,),
                        Text("${toolList[i]["text"]}", style: TextStyle(color: Colors.black45, fontSize: 18),)
                      ],
                    )
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 18,
                      color: Colors.black45,
                    )
                  ],
                ),
              ),
              CrossLine(arguments: {"text":"", "height": 0.5},)
            ],
          ),
        )
);
    }
    return tempList;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: _createToolsList(context),
      ),
    );
  }
}
