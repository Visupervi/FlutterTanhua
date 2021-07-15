import 'package:flutter/material.dart';
import 'package:flutterTanhua/pages/components/CommonHeader.dart';

class Settings extends StatefulWidget {

  final arguments;
  const Settings({this.arguments});

  _SettingsState createState() => _SettingsState(arguments: this.arguments);
}

class _SettingsState extends State<Settings> {
  Map ? arguments;
  _SettingsState({this.arguments});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              CommonHeader(title: {"title":"通用设置"}),
            ],
          ),
        )
    );
  }
}
