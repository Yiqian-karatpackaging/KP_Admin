import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kp_admin/common/widget/widget.dart';
import 'package:operance_datatable/operance_datatable.dart';

class AddBox {
  static void show(
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
                        text: 'Please Choose Box',
                        textAlign: TextAlign.center,
                        // fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        textColor: Color(0xFF323232),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(ctx).pop();
                        },
                        child: const Icon(Icons.close_outlined,),
                      ),
                    ],
                  ),
                  AddBoxWidget()
                ],
              )
          ),
        );
      },
    );
  }
}

class AddBoxWidget extends StatefulWidget {

  const AddBoxWidget({
    super.key,
  });

  @override
  State<AddBoxWidget> createState() => _CreateState();
}

class _CreateState extends State<AddBoxWidget> {


  List<SelectedListItem> _boxItemSelectData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _boxItemSelectData = ['1PK','2PK','4PK','6PK','8PK','12PK','PP1','PP2','PP4'].map((e) => SelectedListItem(name: e, value: e, isSelected: false)).toList();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchDropdownWidget(title: 'Box Size:', enableMultipleSelection: false, isSearchVisible: false, data: _boxItemSelectData, textFieldWidth: 20.w, onChanged: (value){},),
        SizedBox(height: 5),
        SearchTextFieldWidget(title: 'Length:', textWidth: 20.w),
        SizedBox(height: 5),
        SearchTextFieldWidget(title: 'Width:', textWidth: 20.w),
        SizedBox(height: 5),
        SearchTextFieldWidget(title: 'Height:', textWidth: 20.w),
        SizedBox(height: 5),
        Row(
          children: [
            BaseText(text: 'Cancel', bgColor: Colors.blue, textColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2, onTap: (){
              Navigator.of(context).pop();
            },),
            SizedBox(width: 5),
            BaseText(text: 'Confirm', bgColor: Colors.blue, textColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2, onTap: (){

            },),
          ],
        )
      ],
    );
  }
}