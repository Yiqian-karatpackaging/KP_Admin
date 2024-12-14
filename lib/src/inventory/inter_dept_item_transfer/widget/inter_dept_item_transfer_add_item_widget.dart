import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kp_admin/common/widget/widget.dart';

class InterDeptItemTransferAddItem {
  static void show<T>(
    BuildContext context,
  ) {
    showDialog(
      context: context,
      builder: (ctx) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.symmetric(
            horizontal: 48.h,
          ),
          child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            padding: EdgeInsets.symmetric(vertical: 5.w, horizontal: 5.w),
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(4.w),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BaseText(
                      text: 'Add Item',
                      textAlign: TextAlign.center,
                      // fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      textColor: Color(0xFF323232),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(ctx).pop();
                      },
                      child: const Icon(
                        Icons.close_outlined,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18.h),
                Expanded(child: _addItemWidget(context),),
              ],
            ),
          ),
        );
      },
    );
  }
  
  static Widget _addItemWidget(BuildContext context,) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextFieldWidget(title: 'Memo:', moreLine: true, textWidth: 100,),
        BaseText(text: 'Item / Units Type (NetSuite) / Units Type (Karat Portal) / QTY', padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50.w),),
        SearchTextFieldWidget(title: 'Item:', textWidth: 100,),
        SearchTextFieldWidget(title: 'QTY:', textWidth: 100,),
        Row(
          children: [
            BaseText(text: 'Save', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,),
            SizedBox(width: 4.w),
            BaseText(text: 'Cancel', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2, onTap: () {
              Navigator.of(context).pop();
            },),
          ],
        )
      ],
    );
  }
}
