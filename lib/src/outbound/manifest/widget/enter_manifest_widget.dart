import 'package:flutter/material.dart';
import 'package:kp_admin/common/widget/widget.dart';

class EnterManifest {
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
          child: EnterManifestWidget(okCallback: okCallback,),
        );
      },
    );
  }
}

class EnterManifestWidget extends StatefulWidget {

  final Function okCallback;

  const EnterManifestWidget({
    required this.okCallback,
    super.key,
  });

  @override
  State<EnterManifestWidget> createState() => _CreateState();
}

class _CreateState extends State<EnterManifestWidget> {

  final TextEditingController _txtController = TextEditingController();

  String _value = '';

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
              const BaseText(
                text: 'Enter Manifest',
                textAlign: TextAlign.center,
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
          Row(
            children: [
              SearchTextFieldWidget(title: 'Route#', textWidth: 80,),
              SearchTextFieldWidget(title: 'Truck#', textWidth: 80,),
            ],
          ),
          SizedBox(height: 18.h),
          Row(
            children: [
              SearchDropdownWidget(title: 'Driver', textFieldWidth: 80, onChanged: (){},),
              SearchTextFieldWidget(title: 'Loaded By', textWidth: 80,),
            ],
          ),
          SizedBox(height: 18.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
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