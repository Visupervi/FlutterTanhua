/// app首页
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  final arguments;
  const Home({this.arguments});

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("Home页面");
  }
}
