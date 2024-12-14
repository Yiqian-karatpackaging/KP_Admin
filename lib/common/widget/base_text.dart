import 'package:flutter/material.dart';

class BaseText extends StatelessWidget {
  /// 文本内容
  final String text;

  /// 文本颜色
  final Color? textColor;

  /// 字体大小
  final double? fontSize;

  /// 最多行数
  final int lineNumber;

  /// 高度
  final double? height;

  /// 对齐方式
  final TextAlign textAlign;

  /// 字体名称
  final String? fontName;

  /// 字重
  final FontWeight? fontWeight;

  /// 线形设置
  final TextDecoration? textDecoration;

  /// 省略方式
  final TextOverflow overflow;

  /// 点击事件
  final Function? onTap;

  /// 内边距
  final EdgeInsetsGeometry padding;

  /// 背景颜色
  final Color bgColor;

  /// 圆角
  final double borderRadius;

  const BaseText({
    super.key,
    required this.text,
    this.textColor = const Color(0xFF333333),
    this.fontSize,
    this.lineNumber = 0,
    this.height = 1.2,
    this.textAlign = TextAlign.left,
    this.overflow = TextOverflow.ellipsis,
    this.fontName,
    this.fontWeight,
    this.textDecoration,
    this.onTap,
    this.padding = EdgeInsets.zero,
    this.bgColor = Colors.transparent,
    this.borderRadius = 0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap == null ? null : () => onTap!(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          color: bgColor,
        ),
        padding: padding,
        child: Text(
          text,
          maxLines: lineNumber <= 0 ? 999 : lineNumber,
          overflow: overflow,
          textAlign: textAlign,
          style: TextStyle(
            color: textColor,
            height: height,
            fontSize: fontSize ?? 14,
            fontWeight: fontWeight ?? FontWeight.w400,
            fontFamily: fontName,
            decoration: textDecoration,
            decorationColor: textColor,
            decorationThickness: 2,
            letterSpacing: -0.5,
          ),
        ),
      ),
    );
  }
}
