import 'package:flutter/material.dart';
import 'package:flutterTanhua/pages/components/CommonHeader.dart';
import './components/CreateQuestionList.dart';
import '../../../data/questionList.dart';
class QuestionList extends StatefulWidget {
  final arguments;
  const QuestionList({Key? this.arguments});

  _QuestionListState createState() => _QuestionListState();
}

class _QuestionListState extends State<QuestionList> {
  // int currentPage = 0;
  // void _onPressed(){
  //   print({"current": currentPage});
  //   if (currentPage <= questionList.length - 1) {
  //     setState(() {
  //       currentPage++;
  //     });
  //     print("_onPressed1");
  //   } else {
  //     print("_onPressed2");
  //   }
  // }
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
                image: AssetImage("images/qabg.png"),
                fit: BoxFit.cover
            )
        ),
        child: Column(

          children: <Widget>[
            CommonHeader(title: {"title":"初级灵魂测试题"}),
            Expanded(
              child: CreateQuestionList()
            )
          ],
        ),
      ),
    );
  }
}
