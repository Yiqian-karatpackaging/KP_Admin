import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'base_text.dart';

/// 警告框
class CustomAlertDialog {
  static void centerDialog(
    BuildContext context, {
    String? title,
    String? body,
    String? okBtnText = 'OK',
    String? cancelBtnText = 'Cancel',
    Function? cancelCallback,
    Function? okCallback,
  }) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.symmetric(
            horizontal: 100.w,
          ),
          child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(
                8.w,
              ),
            ),
            // height: height,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 24.h),
                BaseText(
                  text: title ?? '',
                  textAlign: TextAlign.center,
                  fontSize: 7.sp,
                  fontWeight: FontWeight.w700,
                  textColor: Color(0xFF323232),
                ),
                SizedBox(height: 8.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: BaseText(
                    textAlign: TextAlign.center,
                    text: body ?? '',
                    textColor: Color(0xFF333333),
                    fontSize: 7.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 1.0,
                        color: Color(0xFFDDDDDD),
                      ),
                    ),
                  ),
                  height: 100.h,
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(ctx).pop();
                            if (cancelCallback != null) {
                              cancelCallback();
                            }
                          },
                          child: Container(
                            color: Color(0xFFFFFFFF),
                            child: Center(
                              child: BaseText(
                                text: cancelBtnText ?? '',
                                textColor: Color(0xFF006FFD),
                                fontWeight: FontWeight.w700,
                                fontSize: 7.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 100.h,
                        width: 0.5.w,
                        color: Color(0xFFDDDDDD),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(ctx).pop();
                            if (okCallback != null) okCallback();
                          },
                          child: Container(
                            color: Color(0xFFFFFFFF),
                            child: Center(
                              child: BaseText(
                                text: okBtnText ?? '',
                                textColor: Color(0xFF006FFD),
                                fontWeight: FontWeight.w500,
                                fontSize: 7.sp,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
