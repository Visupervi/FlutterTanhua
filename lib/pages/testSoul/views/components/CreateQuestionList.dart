import 'package:flutter/material.dart';
import '../../../../data/questionList.dart';

typedef OnPressedChangeState();

class CreateQuestionList extends StatefulWidget {
  // OnPressedChangeState ? onPressed;
  // final arguments;
  CreateQuestionList({Key? key}) : super(key: key);

  _CreateQuestionListState createState() => _CreateQuestionListState();
}

class _CreateQuestionListState extends State<CreateQuestionList> {
  int currentPage = 0;

  Stack _createQuestionElem() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned(
            left: 0,
            top: 60,
            child: Container(
              width: 66,
              height: 52,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/qatext.png"),
                      fit: BoxFit.cover)),
            )),
        Positioned(
            right: 0,
            top: 60,
            child: Container(
              width: 66,
              height: 52,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/leve1.png"),
                      fit: BoxFit.cover)),
            )),
        Positioned(
            top: 80,
            // left: 180,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Align(
                    child: Text(
                      "第${currentPage + 1}题",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      Positioned(
                          child: Text(
                        "${currentPage + 1}/${questionList.length}",
                        style: TextStyle(color: Colors.white54),
                      )),
                    ],
                  ),
                  // Expanded(child:
                  //         Text("未来生活的幸福指数", maxLines: 2, style: TextStyle(color: Colors.white),)
                  // ),
                ],
              ),
            )),
        Positioned(
            top: 150,
            child: Text(
              "${questionList[currentPage]["question_title"]}",
              style: TextStyle(color: Colors.white),
            )),
        Positioned(
            top: 200,
            child: Column(
              children: <Widget>[
                Align(
                    child: GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: new ExactAssetImage('images/headbg.png'),
                            fit: BoxFit.cover)),
                    child: Text(
                      "${questionList[currentPage]["answers"][0]["ans_title"]}",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      if (currentPage >= questionList.length - 1) {
                        Navigator.pushNamed(context, "/testAnalysis");
                      } else {
                        ++currentPage;
                      }
                    });
                  },
                )),
                Align(
                    child: GestureDetector(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    alignment: Alignment.center,
                    width: 300,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: new ExactAssetImage('images/headbg.png'),
                            fit: BoxFit.cover)),
                    child: Text(
                      "${questionList[currentPage]["answers"][1]["ans_title"]}",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      if (currentPage >= questionList.length - 1) {
                        Navigator.pushNamed(context, "/testAnalysis");
                      } else {
                        ++currentPage;
                      }
                    });
                  },
                ))
              ],
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return this._createQuestionElem();
  }
}
