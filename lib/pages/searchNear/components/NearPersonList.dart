/// @Author visupervi
/// @Description 附近的人组件
/// @Date 8:46 上午 2021/7/20
/// @Param
/// @return

import 'package:flutter/material.dart';
import 'dart:math';
import '../../../data/NearPerson.dart';

class NearPersonList extends StatefulWidget {
  const NearPersonList({Key? key}) : super(key: key);

  _NearPersonListState createState() => _NearPersonListState();
}

class _NearPersonListState extends State<NearPersonList> {

  Map wHMap = {
    'wh1': {"width": 70, "height": 100},
    'wh2': {"width": 60, "height": 90},
    'wh3': {"width": 50, "height": 80},
    'wh4': {"width": 40, "height": 70},
    'wh5': {"width": 30, "height": 60},
    'wh6': {"width": 20, "height": 50},
  };

  String _getWidthHeight(dist) {
    if (dist < 200) {
      return 'wh1';
    }
    if (dist < 400) {
      return 'wh2';
    }
    if (dist < 600) {
      return 'wh3';
    }
    if (dist < 1000) {
      return 'wh4';
    }
    if (dist < 1500) {
      return 'wh5';
    }
    return 'wh6';
  }

  List <Widget> _createPositionElem(context){
    List<Widget> tempList = [];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    for(int i = 0; i < nearPersonList.length; i++){
      Map whMap = wHMap[this._getWidthHeight(nearPersonList[i]["dist"])];
      var rdx = new Random();
      double tx = rdx.nextDouble() * (width - whMap["width"]);
      double ty = rdx.nextDouble() * (height - whMap["height"]);
      tempList.add(
        Positioned(
          left: tx,
          top: ty,
          child:
          Container(
            width: whMap["width"]* 1.0 + 8,
            alignment: Alignment.topCenter,
            // height: whMap["height"] * 1.0 + 7,
            constraints: BoxConstraints(maxHeight: whMap["height"] * 1.0 + 7),
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: new ExactAssetImage('images/showfirend.png'),
                fit: BoxFit.cover)),
              child: Container(
                // alignment: Alignment.topCenter,
                constraints: BoxConstraints(maxHeight: whMap["width"]* 1.0, maxWidth: whMap["width"]* 1.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(whMap["width"]* 1.0 / 2),
                  image: DecorationImage(
                    image: NetworkImage("${nearPersonList[i]["header"]}"),
                    fit: BoxFit.cover
                  )
                ),
                // child: Image.network("${nearPersonList[i]["header"]}", fit: BoxFit.cover,),
              ),

          )
      ));
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      width: double.infinity,
      child: Stack(
        children: this._createPositionElem(context),
      ),
    );
  }
}
