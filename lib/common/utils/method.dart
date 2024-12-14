import 'dart:math';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

//随机色
Color randomColor() {
  return Color.fromRGBO(
      Random().nextInt(256), Random().nextInt(256), Random().nextInt(256), 1);
}

Color hexToColor(String hexString) {
  return Color(int.parse(hexString, radix: 16)).withAlpha(255);
}

//比较版本号
bool haveNewVersion(String newVersion, String old) {
  if (newVersion.isEmpty || old.isEmpty) return false;
  int newVersionInt, oldVersion;
  var newList = newVersion.split('.');
  var oldList = old.split('.');
  if (newList.isEmpty || oldList.isEmpty) {
    return false;
  }
  for (int i = 0; i < newList.length; i++) {
    if (isNumber(newList[i]) && isNumber(oldList[i])) {
      newVersionInt = int.parse(newList[i]);
      oldVersion = int.parse(oldList[i]);
      if (newVersionInt > oldVersion) {
        return true;
      } else if (newVersionInt < oldVersion) {
        return false;
      }
    }
  }
  return false;
}

getPrintSize(limit) {
  String size = "";
  //内存转换
  if (limit <= 0) {
    return "0B";
  }
  if (limit < 0.1 * 1024) {
    //小于0.1KB，则转化成B
    size = limit.toString();
    size = "${size.substring(0, size.indexOf(".") + 3)}B";
  } else if (limit < 0.1 * 1024 * 1024) {
    //小于0.1MB，则转化成KB
    size = (limit / 1024).toString();
    size = "${size.substring(0, size.indexOf(".") + 3)}KB";
  } else if (limit < 0.1 * 1024 * 1024 * 1024) {
    //小于0.1GB，则转化成MB
    size = (limit / (1024 * 1024)).toString();
    print(size.indexOf("."));
    size = "${size.substring(0, size.indexOf(".") + 3)}MB";
  } else {
    //其他转化成GB
    size = (limit / (1024 * 1024 * 1024)).toString();
    size = "${size.substring(0, size.indexOf(".") + 3)}GB";
  }
  return size;
}

getPrintSizeMb(limit) {
  String size = "";
  size = (limit / (1024 * 1024)).toString();
  size = size.substring(0, size.indexOf(".") + 3);
  return size;
}

String intMjChangeString(int number) {
  if (number < 10000) {
    return number.toString();
  } else if (number > 10000 && number < 100000000) {
    return "${(number / 10000).toStringAsFixed(2)}w";
  } else {
    return "${(number / 100000000).toStringAsFixed(2)}y";
  }
}

//是否数字
bool isNumber(String str) {
  final reg = RegExp(r'^-?[0-9]+');
  return reg.hasMatch(str);
}

bool isPhoneNumber(String str) {
  return RegExp(
          r'^((13[0-9])|(14[0-9])|(15[0-9])|(16[0-9])|(17[0-9])|(18[0-9])|(19[0-9]))\d{8}$')
      .hasMatch(str);
}

///字符串或者数组判空
bool fxEmpty(var val) {
  if (val == null) {
    return true;
  }
  if (val.runtimeType == Null) {
    return true;
  }
  if (val is String || val is List) {
    if (val.length == 0) {
      return true;
    }
  }
  if (val is String) {
    if (val.replaceAll(" ", "").isEmpty) {
      return true;
    }
  }
  if (val is Map && val.keys.isEmpty) {
    return true;
  }
  if (val is List && val.isEmpty) {
    return true;
  }
  return false;
}

///date字符串格式化
// String dateFormat(String dateString, List<String> format) {
//   if (isEmpty(dateString)) {
//     return "";
//   }
//   DateTime dateTime = DateTime.parse(dateString);
//   String string = formatDate(dateTime, format);
//   return string;
// }
//
// ///date转字符串返回格式：type=0 2021.11.12  type=1 2021.11.12 12:00
// String dateSimpleFormat(String dateString, {int type = 0, String split = "."}) {
//   List<String> list = ['yyyy', split, 'mm', split, 'dd'];
//   if (type == 1) {
//     list = ['yyyy', split, 'mm', split, 'dd', '  ', 'HH', ':', 'nn'];
//   }
//   return dateFormat(dateString, list);
// }

String hidePhoneNumber(String phone) {
  if (fxEmpty(phone) || phone.length < 11) {
    return "***";
  }
  String head = phone.substring(0, 3);
  String end = phone.substring(phone.length - 4);
  return "$head****$end";
}

String getCurrentTimestamp() {
  var currentTimeMillis = DateTime.now().millisecondsSinceEpoch;
  return currentTimeMillis.toString();
}

bool isLink(String str) {
  return str.contains(RegExp(
      r'^(https?:\/\/)?([\w\d_-]+)\.([\w\d_\.-]+)\/?\??([^#\n\r]*)?#?([^\n\r]*)'));
}

//格式化字符串
String getNewFormatString(String content) {
  String newContent = content.trim();
  String text = newContent.replaceAll(RegExp(r'(\n){2,}'), "\n");
  return text;
}

///数组转字符串
String getTaskScreen(List<String> list, {String c = ","}) {
  String str = '';
  for (var f in list) {
    if (str == '') {
      str = f;
    } else {
      str = "$str$c$f";
    }
  }
  return str;
}

///消息数量
String getMessageNumber(int index) {
  if (index <= 99) {
    return "$index";
  } else {
    return "99+";
  }
}

/// 格式化钱
String moneyFormatter(dynamic number) {
  NumberFormat formatter = NumberFormat.currency(
    locale: 'en_US', // 选择货币格式，这里使用美元
    symbol: '\$', // 货币符号
  );
  final result = formatter.format(number is String ? double.parse(number) : number);
  return result;
}

/// 去掉小数位的无效0
String decimalFormatter(double number) {
  final str = number.toStringAsFixed(2);
  return str.replaceAll(RegExp(r'\.?0*$'), '');
}

//格式化钱(向下取整）
String getMoney(num money) {
  if (money < 1000) {
    return "$money";
  } else if (money < 1000000) {
    var temp = "${money / 1000}";
    var pointIndex = temp.lastIndexOf(".");
    return "${temp.substring(0, pointIndex == -1 ? temp.length : pointIndex + 2)}K";
  } else {
    var temp = "${money / 1000000}";
    var pointIndex = temp.lastIndexOf(".");
    return "${temp.substring(0, pointIndex == -1 ? temp.length : pointIndex + 2)}M";
  }
}

///时间展示
String friendlyListDateTime(String datetime) {
  if (fxEmpty(datetime)) {
    return "";
  }
  String friendly = '';
  int dateTime = DateTime.parse(datetime).millisecondsSinceEpoch;
  int now = DateTime.now().millisecondsSinceEpoch;

  int elapsed = (now - dateTime).abs();

  final int seconds = elapsed ~/ 1000;
  final int minutes = seconds ~/ 60;
  final int hours = minutes ~/ 60;
  final int days = hours ~/ 24;

  if (seconds < 60) {
    friendly = '刚刚';
  } else if (seconds >= 60 && seconds < 60 * 60) {
    friendly = '$minutes分钟前';
  } else if (seconds >= 60 * 60 && seconds < 60 * 60 * 24) {
    friendly = '$hours小时前';
  } else {
    friendly = '$days天前';
  }
  return friendly;
}

//月份加0
String dateChangeString(int time) {
  return time > 9 ? '$time' : '0$time';
}

//获取当前年月
String getCurrentYearOrMonthOrDay({DateTime? time}) {
  DateTime dateTime = time ?? DateTime.now();
  return "${dateTime.year}-${dateChangeString(dateTime.month)}-${dateChangeString(dateTime.day)}";
}

//获取当前年月时分
String getCurrentYearOrMonthOrDayOrHourOrMinute({DateTime? time}) {
  DateTime dateTime = time ?? DateTime.now();
  return "${dateTime.year}-${dateChangeString(dateTime.month)}-${dateChangeString(dateTime.day)} ${dateChangeString(dateTime.hour)}:${dateChangeString(dateTime.minute)}";
}

