import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kp_admin/common/widget/base_text.dart';
import 'package:kp_admin/common/widget/search_text_field_widget.dart';
import 'package:kp_admin/common/widget/widget.dart';

class EditLicense {
  static void show(
      BuildContext context,
      String title,
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
          child: EditLicenseWidget(title: title, okCallback: okCallback,),
        );
      },
    );
  }
}

class EditLicenseWidget extends StatefulWidget {

  final String title;
  final Function okCallback;

  const EditLicenseWidget({
    required this.title,
    required this.okCallback,
    super.key,
  });

  @override
  State<EditLicenseWidget> createState() => _CreateState();
}

class _CreateState extends State<EditLicenseWidget> {

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
              BaseText(text: widget.title, fontSize: 20, fontWeight: FontWeight.bold,),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: const Icon(Icons.close),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10), child: Row(
            children: [
              SearchTextFieldWidget(title: 'Item Code'),
              SearchTextFieldWidget(title: 'Bin', readOnly: true,),
              SearchTextFieldWidget(title: 'UPC Code', readOnly: true,),
            ],
          ),),
          Padding(padding: EdgeInsets.only(top: 10), child: Row(
            children: [
              SearchTextFieldWidget(title: 'Receive Date', readOnly: true,),
              SearchTextFieldWidget(title: 'TI', readOnly: true,),
              SearchCalendarTextFieldWidget(title: 'Expiration Date', onChanged: (value) {}),
            ],
          ),),
          Padding(padding: EdgeInsets.only(top: 10), child: Row(
            children: [
              SearchTextFieldWidget(title: 'HI', readOnly: true,),
              SearchTextFieldWidget(title: 'Loose', readOnly: true,),
              SearchDropdownWidget(title: 'Hold', onChanged: (value) {}),
            ],
          ),),
          Padding(padding: EdgeInsets.only(top: 10), child: Row(
            children: [
              SearchTextFieldWidget(title: 'Quantity', readOnly: true,),
              SearchTextFieldWidget(title: 'Container#', readOnly: true,),
              SearchTextFieldWidget(title: 'Units/Case', readOnly: true,),
            ],
          ),),
          Padding(padding: EdgeInsets.only(top: 10), child: Row(
            children: [
              SearchTextFieldWidget(title: 'PO Code', readOnly: true,),
              SearchTextFieldWidget(title: 'Received Qty', readOnly: true,),
              SearchTextFieldWidget(title: 'Lot#'),
            ],
          ),),
          Padding(padding: EdgeInsets.only(top: 10), child: Row(
            children: [
              SearchTextFieldWidget(title: 'SO/TO#'),
              SearchDropdownWidget(title: 'Country of Origin', onChanged: (value) {}),
              SearchDropdownWidget(title: 'Label Printer', onChanged: (value) {}),
            ],
          ),),
          Padding(padding: EdgeInsets.only(top: 10), child: SearchTextFieldWidget(title: 'Reason', textWidth: 50.w, moreLine: true,),),
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