import 'package:kp_admin/src/system_configuration/manage_permissions/manage_permissions.dart';

class EditRoles {
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
          child: EditRolesWidget(
            title: title,
            okCallback: okCallback,
          ),
        );
      },
    );
  }
}

class EditRolesWidget extends StatefulWidget {
  final String title;
  final Function okCallback;

  const EditRolesWidget({
    required this.title,
    required this.okCallback,
    super.key,
  });

  @override
  State<EditRolesWidget> createState() => _CreateState();
}

class _CreateState extends State<EditRolesWidget> {
  final TextEditingController _txtController = TextEditingController();
  String _value = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _txtController.text = _value;
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
                fontWeight: FontWeight.w700,
                textColor: Color(0xFF323232),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.close_outlined,
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 8.h), child: SearchTextFieldWidget(title: 'Role Group Name', textWidth: 40.w, onChanged: () {}),),
          SizedBox(height: 20.h),
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
                    vertical: 4.w,
                    horizontal: 10.w,
                  ),
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
                    vertical: 4.w,
                    horizontal: 10.w,
                  ),
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
