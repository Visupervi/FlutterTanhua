/// @Author visupervi
/// @Description 路由统一管理页面
/// @Date 8:56 上午 2021/7/20
/// @Param
/// @return
import 'package:flutter/material.dart';
import '../pages/home/Home.dart';
import '../pages/login/Login.dart';
import '../pages/searchFlower/SearchFlower.dart';
import '../pages/searchNear/SearchNear.dart';
import '../pages/testSoul/TestSoul.dart';
import '../pages/testSoul/views/QuestionList.dart';
import '../pages/testSoul/views/TestAnalysis.dart';
import '../pages/friends/views/FriendDetail.dart';
import '../pages/my/views/MyDynamic.dart';
import '../pages/my/views/PersonVisit.dart';
import '../pages/my/views/Settings.dart';
import '../pages/my/views/FansLike.dart';

final routers = {
  "/home": (context, {arguments}) => Home(arguments: arguments),
  "/login": (context,{arguments}) => Login(arguments: arguments),
  "/searchFlower": (context,{arguments}) => SearchFlower(arguments: arguments),
  "/searchNear": (context,{arguments}) => SearchNear(arguments: arguments),
  "/testSoul": (context,{arguments}) => TestSoul(arguments: arguments),
  "/questionList": (context,{arguments}) => QuestionList(arguments: arguments),
  "/testAnalysis": (context,{arguments}) => TestAnalysis(arguments: arguments),
  "/friendDetail": (context,{arguments}) => FriendDetail(arguments: arguments),
  "/myDynamic": (context,{arguments}) => MyDynamic(arguments: arguments),
  "/personVisit": (context,{arguments}) => PersonVisit(arguments: arguments),
  "/settings": (context,{arguments}) => Settings(arguments: arguments),
  "/fansLike": (context,{arguments}) => FansLike(arguments: arguments),
};

//固定写法
class RouterUtil{
  static Route<dynamic> ? onGenerateRoute (RouteSettings settings) {
    // 统一处理
    print("------------");
    final String? name = settings.name;
    final Function pageContentBuilder = routers[name] as Function;
    if (pageContentBuilder != null) {
      if (settings.arguments != null) {
        final Route route = MaterialPageRoute(
            builder: (context) =>
                pageContentBuilder(context, arguments: settings.arguments));
        return route;
      }else{
        final Route route = MaterialPageRoute(
            builder: (context) =>
                pageContentBuilder(context));
        return route;
      }
    }
  }
}


