export 'dart:convert';
import 'package:flutter/material.dart';
export 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kp_admin/common/widget/widget.dart';
export 'package:flutter_easyloading/flutter_easyloading.dart';

class PopTextField {
  static void show(
      BuildContext context,
      String title,
      String? content,
      Function okCallback,
      ) {
    showDialog(
      context: context,
      builder: (ctx) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.symmetric(
            horizontal: 48.h,
          ),
          child: PopTextFieldWidget(title: title, content: content, okCallback: okCallback,),
        );
      },
    );
  }
}

class PopTextFieldWidget extends StatefulWidget {

  final String title;
  final String? content;
  final Function okCallback;

  const PopTextFieldWidget({
    required this.title,
    this.content,
    required this.okCallback,
    super.key,
  });

  @override
  State<PopTextFieldWidget> createState() => _CreateState();
}

class _CreateState extends State<PopTextFieldWidget> {

  final TextEditingController _txtController = TextEditingController();

  String _value = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _txtController.text = widget.content ?? '';
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      padding: EdgeInsets.symmetric(vertical: 5.w, horizontal: 5.w),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(4.w),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BaseText(
                text: widget.title,
                textAlign: TextAlign.center,
                // fontSize: 15.sp,
                // fontWeight: FontWeight.w700,
                textColor: Color(0xFF323232),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.close_outlined,),
              ),
            ],
          ),
          SizedBox(height: 18.h),
          TextFormField(
            controller: _txtController,
            maxLines: 5,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1500),
            ],
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(color: Color(0xFFFFFFFF)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(
                  color: Color(0xFF1C89FF),
                ),
              ),
              hintStyle: TextStyle(
                color: const Color(0xFFAEAEAE),
                fontWeight: FontWeight.w500,
                fontSize: 15.sp,
              ),
            ),
            onChanged: (value) => _value = value,
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  // if (_value == '') {
                  //   // EasyLoading.showToast("Please enter the correct current password");
                  //   return;
                  // }
                  widget.okCallback(_value);
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 4.w, horizontal: 10.w,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2.w)),
                    color: const Color(0xFF006FFD),
                  ),
                  child: const BaseText(
                    text: 'Save',
                    textColor: Color(0xFFFFFFFF),
                    // fontWeight: FontWeight.w700,
                    // fontSize: 15.sp,
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 4.w, horizontal: 10.w,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(2.w)),
                    color: const Color(0xFF006FFD),
                  ),
                  child: const BaseText(
                    text: 'Cancel',
                    textColor: Color(0xFFFFFFFF),
                    // fontWeight: FontWeight.w700,
                    // fontSize: 15.sp,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
