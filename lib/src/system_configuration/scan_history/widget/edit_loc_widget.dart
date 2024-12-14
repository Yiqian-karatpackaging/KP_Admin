import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kp_admin/common/widget/widget.dart';

class EditLoc {
  static void show(
      BuildContext context,
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
          child: EditLocWidget(okCallback: okCallback,),
        );
      },
    );
  }
}

class EditLocWidget extends StatefulWidget {

  final Function okCallback;

  const EditLocWidget({
    required this.okCallback,
    super.key,
  });

  @override
  State<EditLocWidget> createState() => _CreateState();
}

class _CreateState extends State<EditLocWidget> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BaseText(text: 'Edit ScanHistory Loc', fontSize: 20, fontWeight: FontWeight.bold,),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(Icons.close),
              )
            ],
          ),
          SizedBox(height: 10.h),
          SearchTextFieldWidget(title: 'Current Loc', readOnly: true,),
          SizedBox(height: 10.h),
          SearchDropdownWidget(title: 'New Loc', onChanged: (){},),
          Padding(padding: EdgeInsets.only(top: 20), child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: BaseText(text: 'Cacnel', textColor: Colors.white,),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // 设置背景颜色
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2), // 设置圆角半径
                  ),
                ),
              ),
              SizedBox(width: 20.w,),
              ElevatedButton(
                onPressed: () {  },
                child: BaseText(text: 'Save', textColor: Colors.white,),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // 设置背景颜色
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2), // 设置圆角半径
                  ),
                ),
              )
            ],
          ),),
        ],
      ),
    );
  }
}