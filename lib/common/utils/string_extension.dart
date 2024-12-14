import 'dart:convert';
import 'package:intl/intl.dart';


extension StringExtension on String {
  /// 首字母大写
  String firstCapitalize() {
    return substring(0, 1).toUpperCase() + substring(1).toLowerCase();
  }

  /// 密码判断 字母+数字，字母+符号，数字+符号,6-18位
  bool isPassword() {
    if (this.length < 6 || this.length > 18) return false;
    final regex = RegExp(r'[a-zA-Z]+\d+|\d+[a-zA-Z]+|\W+[a-zA-Z]+|[a-zA-Z]+\W+|\d+\W+|\W+\d+|\W+\W+');
    return regex.hasMatch(this);
  }

  bool isJson() {
    try {
      // 尝试解析字符串
      json.decode(this);
      return true;  // 解析成功，说明是合法的 JSON 字符串
    } catch (e) {
      return false;  // 解析失败，说明不是合法的 JSON 字符串
    }
  }

  String toTimeStr({String formatted = 'yyyy-MM-dd HH:mm:ss'}) {
    // 提取数字部分
    if (this == null || this == '') {
      return '';
    }
    int timestamp = int.parse(
        RegExp(r"\d+").firstMatch(this)!.group(0)!
    );
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    String formattedDate = DateFormat(formatted).format(date);
    return formattedDate;
  }

  DateTime toDateTime() {
    // 提取数字部分
    int timestamp = int.parse(
        RegExp(r"\d+").firstMatch(this)!.group(0)!
    );
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return date;
  }
}