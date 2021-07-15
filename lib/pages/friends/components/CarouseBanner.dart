/// 轮播图组件
/// 引用carousel_slider组件
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../data/UserDetail.dart';
class CarouseBanner extends StatefulWidget {
  const CarouseBanner({Key? key}) : super (key: key);

  _CarouseBannerState createState() => _CarouseBannerState();
}

class _CarouseBannerState extends State<CarouseBanner> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final List<Widget> imageSliders = userDetail["data"]["result"]["userInfo"]["photos"]
        .map <Widget>((item) => Container(
          child: Container(
            margin: EdgeInsets.all(1.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item["photo"], fit: BoxFit.cover, width: 1100.0),
                  ],
                )),
          ),
    ))
        .toList();
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 16/9,
        enlargeCenterPage: false,
        scrollDirection: Axis.horizontal,
        autoPlay: true,
        height: MediaQuery.of(context).size.height / 5
      ),
      items: imageSliders,
    );
  }
}
