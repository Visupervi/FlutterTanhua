/// app 登陆页面
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  final arguments;
  const Login({this.arguments});
  _LoginState createState() => _LoginState(arguments: this.arguments);
}

class _LoginState extends State<Login> {
  Map arguments;
  _LoginState({required this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("登陆${arguments["pid"]}")
      ),
    );
  }
}
