import 'Request.dart';

class Api {
  static login(data) {
    return Request.post(
      "/login",
      data: data,
    );
  }
}
