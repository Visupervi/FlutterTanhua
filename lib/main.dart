
import 'package:flutter/material.dart';
import 'pages/tabs/Tabs.dart';
import 'router/Routers.dart';
// Flutter Container组件， Text组件详解
// padding组件
void main() {
  runApp(MyApp());
}

// 自定义组件
// 所有的组件都是类
// StatelessWidget 无状态类，是一个抽象方法。
// MaterialApp 是一个方便的Widget, 它封装了应用程序实现Material Design所需要的一些Widget,一般作为顶层widget使用
// 在MaterialApp里面有Home（主页）属性 title(标题) color(颜色) Theme(主题) routes(路由)
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 是否显示debugger
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Tabs(),
      // 路由传值, 配置路由
      onGenerateRoute: RouterUtil.onGenerateRoute,
      // routes: routers,
    );
  }
}
// Scaffold组件是MaterialApp Design布局结构的基本实现，此类提供了用于显示
// drawer、snackbar和sheet的API
// Scaffold有下面几个主要属性
// appbar 显示在界面顶部的一个AppBar
// body 当前界面所显示的主要内容 Widget
// drawer 抽屉菜单控件

