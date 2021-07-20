/// @Author visupervi
/// @Description 圈子列表组件
/// @Date 8:22 上午 2021/7/20
/// @Param
/// @return
import 'package:flutter/material.dart';
import 'package:flutterTanhua/pages/friends/views/components/UserDynamic.dart';

class CircleList extends StatefulWidget {
  final TabController ?tabController;
  const CircleList({this.tabController}) ;
  _CircleLisrState createState() => _CircleLisrState();
}

class _CircleLisrState extends State<CircleList>
    with SingleTickerProviderStateMixin {
 TabController ? tabController;
 _CircleLisrState({this.tabController});

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
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
              child: Text("推荐", style: TextStyle(color: Colors.white),),
              // icon: Icon(Icons.recommend),
              // text: "推荐",
            ),

            Tab(
              // icon: Icon(Icons.directions_bike),
              child: Text("最新", style: TextStyle(color: Colors.white),),
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
            child: UserDynamic(nickName: {"nickName":"张三", "header": 'https://tse1-mm.cn.bing.net/th/id/R-C.9fc7f358a34e25d4579bbdc83bd01997?rik=s2TKIPtUROZlvQ&riu=http%3a%2f%2fwww.desktx.com%2fd%2ffile%2fwallpaper%2fscenery%2f20170322%2f949d9caee3cde8a202a573abbfb34078.jpg&ehk=ix90h04lbA2wEZbV6O6g2KLHbMu7mNo8f2%2fsM7LSXUg%3d&risl=&pid=ImgRaw',
            },),
          )),

          Center(child:
          Container(
            padding: EdgeInsets.all(10),
            child: UserDynamic(nickName: {"nickName":"李四", "header": 'https://tse1-mm.cn.bing.net/th/id/R-C.9fc7f358a34e25d4579bbdc83bd01997?rik=s2TKIPtUROZlvQ&riu=http%3a%2f%2fwww.desktx.com%2fd%2ffile%2fwallpaper%2fscenery%2f20170322%2f949d9caee3cde8a202a573abbfb34078.jpg&ehk=ix90h04lbA2wEZbV6O6g2KLHbMu7mNo8f2%2fsM7LSXUg%3d&risl=&pid=ImgRaw',
            },),
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
