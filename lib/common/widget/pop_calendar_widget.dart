import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'base_text.dart';
import 'package:intl/intl.dart';

class PopCalendar {
  static void show(
    BuildContext context,
    String title,
    String txtTitle,
    DateTime date,
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
          child: PopCalendarWidget(
            title: title,
            txtTitle: txtTitle,
            date: date,
            okCallback: okCallback,
          ),
        );
      },
    );
  }
}

class PopCalendarWidget extends StatefulWidget {
  final String title;
  final String txtTitle;
  final DateTime date;
  final Function okCallback;

  const PopCalendarWidget({
    required this.title,
    required this.txtTitle,
    required this.date,
    required this.okCallback,
    super.key,
  });

  @override
  State<PopCalendarWidget> createState() => _CreateState();
}

class _CreateState extends State<PopCalendarWidget> {
  final TextEditingController _txtController = TextEditingController();
  String _value = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _value = DateFormat('MM/dd/yyyy').format(widget.date);
    _txtController.text = _value;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> _showCalendar() async {
    const dayTextStyle =
        TextStyle(color: Colors.black, fontWeight: FontWeight.w700);
    final weekendTextStyle =
        TextStyle(color: Colors.grey[500], fontWeight: FontWeight.w600);
    final anniversaryTextStyle = TextStyle(
      color: Colors.red[400],
      fontWeight: FontWeight.w700,
      decoration: TextDecoration.underline,
    );
    final config = CalendarDatePicker2WithActionButtonsConfig(
      calendarViewScrollPhysics: const NeverScrollableScrollPhysics(),
      dayTextStyle: dayTextStyle,
      calendarType: CalendarDatePicker2Type.single,
      selectedDayHighlightColor: Colors.purple[800],
      closeDialogOnCancelTapped: true,
      firstDayOfWeek: 0,
      weekdayLabels: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
      weekdayLabelTextStyle: const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
      controlsTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      centerAlignModePicker: true,
      customModePickerIcon: const SizedBox(),
      selectedDayTextStyle: dayTextStyle.copyWith(color: Colors.white),
      dayTextStylePredicate: ({required date}) {
        TextStyle? textStyle;
        if (date.weekday == DateTime.saturday ||
            date.weekday == DateTime.sunday) {
          textStyle = weekendTextStyle;
        }
        if (DateUtils.isSameDay(date, DateTime(2021, 1, 25))) {
          textStyle = anniversaryTextStyle;
        }
        return textStyle;
      },
    );
    final values = await showCalendarDatePicker2Dialog(
      context: context,
      config: config,
      dialogSize: const Size(325, 370),
      borderRadius: BorderRadius.circular(15),
      value: [widget.date],
      dialogBackgroundColor: Colors.white,
    );
    if (values != null) {
      _value = DateFormat('MM/dd/yyyy').format(values[0]!);
      _txtController.text = _value;
    }
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
                child: const Icon(
                  Icons.close_outlined,
                ),
              ),
            ],
          ),
          SizedBox(height: 18.h),
          Row(
            children: [
              SizedBox(width: 16.w),
              BaseText(text: '${widget.txtTitle}:'),
              SizedBox(width: 4.w),
              SizedBox(
                width: 80.w,
                child: TextFormField(
                  controller: _txtController,
                  readOnly: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(
                        color: Color(0xFF1C89FF),
                      ),
                    ),
                  ),
                  onTap: () => _showCalendar(),
                  onChanged: (value) => _value = value,
                ),
              )
              // BaseText(text: widget.content ?? ''),
            ],
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
