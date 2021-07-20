/// @Author visupervi
/// @Description swiper 组件
/// @Date 8:45 上午 2021/7/20
/// @Param
/// @return

import 'dart:math';
import 'package:flutter/material.dart';
import '../../../data/SwiperData.dart';
class MySwiper extends StatefulWidget {
  final arguments;
  const MySwiper({this.arguments}) ;
  _MySwiperState createState() => _MySwiperState(arguments: this.arguments);
}

class _MySwiperState extends State<MySwiper> {
  var currentPage = images.length - 1.0;
  PageController ? controller;
  Map arguments;
  _MySwiperState({ required this.arguments});
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: images.length - 1);
    // print(controller);
    controller!.addListener(() {
      setState(() {
        currentPage = controller!.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print(arguments);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Stack(
          children: <Widget>[
            // 两者堆叠在一起。通过PageView滑动的Controller来控制当前显示的page
            CardScrollWidget(currentPage),
            Positioned.fill(
              child: PageView.builder(
                itemCount: images.length,
                controller: controller,
                reverse: true,
                itemBuilder: (context, index) {
                  return Container();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardScrollWidget extends StatelessWidget {
  final currentPage;
  final padding = 20.0;
  final verticalInset = 20.0;
  CardScrollWidget(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: (12.0 / 16.0) * 1.2,
      child: LayoutBuilder(
        builder: (context, contraints) {
          var width = contraints.maxWidth;
          var height = contraints.maxHeight;
          var safeWidth = width - 2 * padding;
          var safeHeight = height - 2 * padding;
          var heightOfPrimaryCard = safeHeight;
          var widthOfPrimaryCard = heightOfPrimaryCard * 12 / 16;
          var primaryCardLeft = safeWidth - widthOfPrimaryCard;
          var horizontalInset = primaryCardLeft / 2;
          List<Widget> cardList = [];
          for (int i = 0; i < images.length; i++) {
            var leftPage = i - currentPage;
            bool isOnRight = leftPage > 0;
            var start = padding +
                max(
                    primaryCardLeft -
                        horizontalInset * -leftPage * (isOnRight ? 15 : 1),
                    0);
            var cardItem = Positioned.directional(
                top: padding + verticalInset * max(-leftPage, 0.0),
                bottom: padding + verticalInset * max(-leftPage, 0.0) ,
                start: start,
                textDirection: TextDirection.rtl,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(3.0, 6.0),
                          blurRadius: 10.0)
                    ]),
                    child: AspectRatio(
                      aspectRatio: 12 / 16,
                      child: Stack(
                        fit: StackFit.expand,
                        children: <Widget>[
                          Align(
                            child: Image.network("${images[i]["header"]}", fit: BoxFit.cover,),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // 设置标题
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        images[i]["nick_name"],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text("${images[i]["marry"]} ｜ ${images[i]["degree"]} ｜ 年龄相仿", textAlign: TextAlign.left),
                                      Padding(
                                        padding:
                                        EdgeInsets.only(left: 12, top: 10),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 22.0, vertical: 6.0),
                                          decoration: BoxDecoration(
                                              color: Colors.purpleAccent,
                                              borderRadius:
                                              BorderRadius.circular(20.0)),
                                          child: Text("点击查看",
                                              style: TextStyle(color: Colors.white)),
                                        ),
                                      )
                                    ],
                                  )
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ));
            cardList.add(cardItem);
          }
          return Stack(
            children: cardList,
          );
        },
      ),
    );
  }
}
