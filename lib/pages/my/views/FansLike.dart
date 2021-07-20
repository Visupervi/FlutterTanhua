/// @Author visupervi
/// @Description 粉丝，互相关注，关注页面
/// @Date 8:39 上午 2021/7/20
/// @Param
/// @return
import 'package:flutter/material.dart';
import 'package:flutterTanhua/pages/friends/components/RecommendList.dart';

class FansLike extends StatefulWidget {
  final arguments;
  final TabController ?tabController;
  const FansLike({this.tabController, this.arguments});

  _FansLikeState createState() => _FansLikeState(arguments: this.arguments);
}

class _FansLikeState extends State<FansLike>
    with SingleTickerProviderStateMixin {
  Map ? arguments;
  TabController ? tabController;
  _FansLikeState({this.tabController, this.arguments});

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }
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
        title: TabBar(
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.label, // 指示器是类型， label是这样的，tab是沾满整个tab的空间的
          isScrollable: true, // 是否可以滑动
          indicatorWeight: 3.0, // 指示器的高度/厚度
          unselectedLabelStyle: TextStyle(fontSize: 16), // 未选择样式
          labelStyle: TextStyle( fontSize: 24, height: 2), // 选择的样式
          tabs: [
            Tab(
              child: Text("互相关注", style: TextStyle(color: Colors.white),),
              // icon: Icon(Icons.recommend),
              // text: "推荐",
            ),

            Tab(
              // icon: Icon(Icons.directions_bike),
              child: Text("关注", style: TextStyle(color: Colors.white),),
            ),
            Tab(
              // icon: Icon(Icons.directions_bike),
              child: Text("粉丝", style: TextStyle(color: Colors.white),),
            ),
          ],
          controller: tabController,
        ),
      ),
      body: TabBarView(
        children: [
          Center(child:
          Container(
            padding: EdgeInsets.all(10),
            child: RecommendList(arguments: {"isIcon": "btn", "eachOther": "all"},),
          )),

          Center(child:
          Container(
            padding: EdgeInsets.all(10),
            child: RecommendList(arguments: {"isIcon": "btn", "eachOther": "like"},),
          )
          ),
          Center(child:
          Container(
            padding: EdgeInsets.all(10),
            child: RecommendList(arguments: {"isIcon": "btn", "eachOther": "fans"},),
          )
          ),
        ],
        controller: tabController,
      ),
    );
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }
}
