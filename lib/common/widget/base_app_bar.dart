import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kp_admin/common/utils/method.dart';
import 'base_text.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? appBarBackgroundColor; //AppBar的背景颜色
  final bool? isShowBack; //AppBar 左侧图标 是否显示  默认 true 显示

  final Widget? leading; //左侧图标(一般用于返回按钮)
  final double? leadingWidth;
  final String? imageUrl;
  final Color? iconColor; //左侧图标的颜色
  final VoidCallback? backCallback; //左侧图标 点击回调

  final Widget? title; //AppBar 的title
  final String? titleText; //AppBar title的文字
  final bool? centerTitle; //AppBar 的文字是否居中  默认 true 居中
  final double? textSize;
  final Color? textColor;

  final PreferredSizeWidget? bottom; //AppBar 的bottom

  final double? elevation; //去掉阴影  将值设置为0

  final List<Widget>? actions;

  final String? titleIconName;

  const BaseAppBar({
    super.key,
    this.appBarBackgroundColor,
    this.isShowBack = true,
    this.leading,
    this.leadingWidth,
    this.imageUrl,
    this.iconColor,
    this.backCallback,
    this.title,
    this.titleText,
    this.centerTitle,
    this.textColor,
    this.textSize,
    this.bottom,
    this.elevation,
    this.actions,
    this.titleIconName,
  });

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarBackgroundColor ?? Color(0xFFF7F7F7),
      surfaceTintColor: appBarBackgroundColor ?? Color(0xFFF7F7F7),
      leadingWidth: isShowBack == true ? leadingWidth : 0,
      leading: isShowBack == true
          ? leading ??
              GestureDetector(
                onTap: () {
                  if (backCallback != null) {
                    backCallback!();
                  } else {
                    Navigator.pop(context);
                  }
                },
                child: Container(
                  color: Colors.transparent,
                  height: 44.h,
                  child: Center(
                      child: SvgPicture.asset(
                    'assets/svg/back.svg',
                    width: 12.w,
                    height: 12.w,
                  )
                      // BaseImage(
                      //   imageName: imageUrl ?? "default/back",
                      //   color: iconColor,
                      //   width: Dimens.w(24),
                      // ),
                      ),
                ),
              ) // leading: canBack
          : const SizedBox(),
      title: title ??
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              fxEmpty(titleIconName)
                  ? Container()
                  : Container(
                      margin: EdgeInsets.only(
                        right: 12.w,
                      ),
                      // child: BaseImage(
                      //   imageName: titleIconName!,
                      //   width: Dimens.w(32),
                      // ),
                    ),
              Flexible(
                child: BaseText(
                  text: titleText ?? "",
                  fontSize: textSize ?? 10.sp,
                  fontWeight: FontWeight.w700,
                  textColor: textColor,
                  lineNumber: 1,
                ),
              ),
            ],
          ),
      elevation:0,
      centerTitle: centerTitle ?? true,
      automaticallyImplyLeading: true,
      bottom: bottom,
      actions: actions,
      toolbarHeight: 67.h,
      // shadowColor: elevation == 0 ? Colors.transparent : Color(0x000000).withOpacity(0.25),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
