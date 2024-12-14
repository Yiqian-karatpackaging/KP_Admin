import 'package:flutter/material.dart';

/// 导航高度
double navigationBarHeight = AppBar().preferredSize.height;

/// 状态栏高度
double statusBarHeight(BuildContext context) {
  return MediaQuery.of(context).padding.top;
}

/// 导航 + 状态栏高度
double totalBarHeight(BuildContext context) {
  return MediaQuery.of(context).padding.top + AppBar().preferredSize.height;
}

/// 底部安全区域高度
double bottomPadding(BuildContext context) {
  return MediaQuery.of(context).padding.bottom;
}

/// 屏幕高度
double mainScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

/// 屏幕宽度
double mainScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

/// 屏幕可用高度，去掉状态栏，导航栏，底部安全区域后高度
double usableHeight(BuildContext context) {
  return MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - AppBar().preferredSize.height - MediaQuery.of(context).padding.bottom;
}


