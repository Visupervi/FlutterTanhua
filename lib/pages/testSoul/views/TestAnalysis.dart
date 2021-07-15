
import 'package:flutter/material.dart';
import 'package:flutterTanhua/pages/components/CommonHeader.dart';
import '../../components/LineGradientButton.dart';
class TestAnalysis extends StatefulWidget {
  final arguments;
  const TestAnalysis({this.arguments});

  _TestAnalysisState createState() => _TestAnalysisState();
}

class _TestAnalysisState extends State<TestAnalysis> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            alignment: Alignment(1, 1),
            image: AssetImage("images/result.png"),
            fit: BoxFit.fill,
            )
        ),
        child: Column(
          children: <Widget>[
            CommonHeader(title: {"title":"测试结果"}),
            Expanded(
                child:
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned(
                    child:
                    Text("[    牛呀牛呀   ]", style: TextStyle(color: Colors.white),),
                    right: 60,
                    top: 10,
                  ),
                  Positioned(
                    width: 180,
                    top: 40,
                    right: 20,
                    child:
                      Text(
                          " => 组件从新rende是这样一个流程。"
                      "你想获得渲染后新的fields的值，你需要在useEffect中获取到。"
                      "react的setState是不能变成同步的, 不论是在函数组件或是class组件此处只是set state之后的一个回调, 实际上是等组件重新render再执行, 因此还是异步的"
                      , style: TextStyle(color: Colors.white),)
                  ),

                  Positioned(
                    bottom: 30,
                      child: LineGradientButton(
                        ()=>{Navigator.pushNamed(context, "/questionList")},
                        arguments:{
                          "wd": 360.0,
                          "ht": 40.0,
                          "src": "images/headbg.png",
                          "text": "继续测试"})
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
