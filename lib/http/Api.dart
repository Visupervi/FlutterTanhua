/// @Author visupervi
/// @Description 请求接口统一管理
/// @Date 8:22 上午 2021/7/20
/// @Param
/// @return
import 'Request.dart';

class Api {
  static login(data) {
    return Request.post(
      "/login",
      data: data,
    );
  }
}
