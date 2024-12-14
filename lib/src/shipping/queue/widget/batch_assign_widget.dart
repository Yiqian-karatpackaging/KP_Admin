import 'package:intl/intl.dart';
import 'package:kp_admin/src/shipping/queue/queue.dart';

class BatchAssign {
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
          child: BatchAssignWidget(
            okCallback: okCallback,
          ),
        );
      },
    );
  }
}

class BatchAssignWidget extends StatefulWidget {
  final Function okCallback;

  const BatchAssignWidget({
    required this.okCallback,
    super.key,
  });

  @override
  State<BatchAssignWidget> createState() => _CreateState();
}

class _CreateState extends State<BatchAssignWidget> {
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
                text: 'Edit Priority & AssignTo',
                textAlign: TextAlign.center,
                // fontSize: 15.sp,
                // fontWeight: FontWeight.w700,
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
          SizedBox(height: 18.h),
          SearchDropdownWidget(title: 'Priority', titleWidth: 20, textFieldWidth: 100, onChanged: (){}),
          SizedBox(height: 8.h),
          SearchDropdownWidget(title: 'User', titleWidth: 20, textFieldWidth: 100, onChanged: (){}),
          SizedBox(height: 18.h),
          Row(
            children: [
              BaseText(
                text: 'Save',
                textColor: Colors.white,
                bgColor: Colors.blue,
                padding: EdgeInsets.symmetric(
                  vertical: 4.h,
                  horizontal: 4.w,
                ),
                borderRadius: 1.w,
                onTap: () {

                },
              ),
              SizedBox(width: 8.w),
              BaseText(
                text: 'Cancel',
                textColor: Colors.white,
                bgColor: Colors.blue,
                padding: EdgeInsets.symmetric(
                  vertical: 4.h,
                  horizontal: 4.w,
                ),
                borderRadius: 1.w,
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
