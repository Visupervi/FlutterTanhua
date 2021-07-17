import 'dart:convert';
import 'package:common_utils/common_utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Request {
  // 配置 Dio 实例
  static BaseOptions _options = BaseOptions(
    baseUrl: 'https://www.xx.com/api',
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );

  // 创建 Dio 实例
  static Dio _dio = Dio(_options);

  // _request 是核心函数，所有的请求都会走这里
  static Future<T> _request<T>(String path,
      {String ? method, Map ? params, data}) async {
    // restful 请求处理
    if (params != null) {
      params.forEach((key, value) {
        if (path.indexOf(key) != -1) {
          path = path.replaceAll(":$key", value.toString());
        }
      });
    }
    LogUtil.v(data, tag: '发送的数据为：');
    try {
      Response response = await _dio.request(path,
          data: data, options: Options(method: method));
      if (response.statusCode == 200 || response.statusCode == 201) {
        try {
          if (response.data['status'] != 200) {
            LogUtil.v(response.data['status'], tag: '服务器错误，状态码为：');
            EasyLoading.showInfo('服务器错误，状态码为：${response.data['status']}');
            return Future.error(response.data['msg']);
          } else {
            LogUtil.v(response.data, tag: '响应的数据为：');
            if (response.data is Map) {
              return response.data;
            } else {
              return json.decode(response.data.toString());
            }
          }
        } catch (e) {
          LogUtil.v(e, tag: '解析响应数据异常');
          return Future.error('解析响应数据异常');
        }
      } else {
        LogUtil.v(response.statusCode, tag: 'HTTP错误，状态码为：');
        EasyLoading.showInfo('HTTP错误，状态码为：${response.statusCode}');
        _handleHttpError(response.statusCode);
        return Future.error('HTTP错误');
      }
    } on DioError catch (e, s) {
      LogUtil.v(_dioError(e), tag: '请求异常');
      EasyLoading.showInfo(_dioError(e));
      return Future.error(_dioError(e));
    } catch (e, s) {
      LogUtil.v(e, tag: '未知异常');
      return Future.error('未知异常');
    }
  }

  // 处理 Dio 异常
  static String _dioError(DioError error) {
    switch (error.type) {
      case DioErrorType.connectTimeout:
        return "网络连接超时，请检查网络设置";
        break;
      case DioErrorType.receiveTimeout:
        return "服务器异常，请稍后重试！";
        break;
      case DioErrorType.sendTimeout:
        return "网络连接超时，请检查网络设置";
        break;
      case DioErrorType.response:
        return "服务器异常，请稍后重试！";
        break;
      case DioErrorType.cancel:
        return "请求已被取消，请重新请求";
        break;
      case DioErrorType.other:
        return "网络异常，请稍后重试！";
        break;
      default:
        return "Dio异常";
    }
  }

  // 处理 Http 错误码
  static void _handleHttpError(int ?errorCode) {
    String message;
    switch (errorCode) {
      case 400:
        message = '请求语法错误';
        break;
      case 401:
        message = '未授权，请登录';
        break;
      case 403:
        message = '拒绝访问';
        break;
      case 404:
        message = '请求出错';
        break;
      case 408:
        message = '请求超时';
        break;
      case 500:
        message = '服务器异常';
        break;
      case 501:
        message = '服务未实现';
        break;
      case 502:
        message = '网关错误';
        break;
      case 503:
        message = '服务不可用';
        break;
      case 504:
        message = '网关超时';
        break;
      case 505:
        message = 'HTTP版本不受支持';
        break;
      default:
        message = '请求失败，错误码：$errorCode';
    }
    EasyLoading.showError(message);
  }


  static Future<T> get<T>(String path, {Map ? params}) {
    return _request(path, method: 'get', params: params);
  }

  static Future<T> post<T>(String path, {Map ? params, data}) {
    return _request(path, method: 'post', params: params, data: data);
  }
}


