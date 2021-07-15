/// 1、问题描述:
/// Container嵌套Container,内部Container设置宽高属性不生效,即使设置constraints约束也不生效
/// 2、解决方案:
/// 取消两个Container的宽高设置,使用constraints去约束宽高即可限制内部的Container的宽高(注意不要设置宽高,原因看源码)
///
/// 上面这种方式没有解决
///
///
/// 下面这种方式可以解决
/// Flutter中的约束工作原理与平常有所不同。
/// 小部件本身没有约束。
/// 当您指定宽度 / 容器上>高度，您就不必约束容器。您正在约束容器的子。
/// 容器然后将根据其子项的大小对其自身进行大小调整。
/// 因此，父级窗口小部件始终对后代的大小起最后决定作用。
/// 如果要解决此问题，必须使用 Align 小部件：
import 'package:flutter/material.dart';
import '../../../data/LastActive.dart';
class NearLook extends StatefulWidget {
  const NearLook({Key? key}) : super (key: key);

  _NearLookState createState() => _NearLookState();
}



class _NearLookState extends State<NearLook> {
  // 动态渲染最近访问者头像, 使用模拟数据
  List<Widget> _getNearData() {
    List<Widget> tempList = [];
    for(int i = 0; i < lastVisit.length; i++) {
      tempList.add(Align(
        child: Container(
          width: 40,
          constraints: BoxConstraints(maxHeight: 40),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage("${lastVisit[i]["header"]}"),
                  fit: BoxFit.cover
              )
          ),
        ),
      )
      );
      tempList.add(SizedBox(width: 3,));
      if(i == lastVisit.length - 1) {
        tempList.add(SizedBox(width: 5,));
        tempList.add(Align(
          child: Text(">"),
        ));
      }
    }
    return tempList;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      constraints: BoxConstraints(maxHeight: 80),
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Row(
        children:<Widget> [
          Expanded(
            child: Text("最近有4人来访，快去查看...", overflow: TextOverflow.ellipsis,style: TextStyle(
              color: Colors.black87
            ),),
            flex: 2,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal, // 控制滚动的方向 1.Axis.vertical 2.Axis.horizontal
              children: this._getNearData(),
            ),
            flex: 2,)
            ],
          )
      );
  }
}
