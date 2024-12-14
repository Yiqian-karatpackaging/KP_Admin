import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'base_text.dart';

class SearchCalendarTextFieldWidget extends StatefulWidget {

  final Function onChanged;
  final String title;
  final double titleWidth;
  final double textFieldWidth;

  const SearchCalendarTextFieldWidget({
    required this.title,
    required this.onChanged,
    this.titleWidth = 50,
    this.textFieldWidth = 40,
    super.key,
  });

  @override
  State<SearchCalendarTextFieldWidget> createState() => _CreateState();
}

class _CreateState extends State<SearchCalendarTextFieldWidget> {

  final TextEditingController _txtController = TextEditingController();

  String _value = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _txtController.text = DateFormat('MM/dd/yyyy').format(DateTime.now());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> _showCalendar() async {
    FocusScope.of(context).unfocus();
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
      value: [DateTime.now()],
      dialogBackgroundColor: Colors.white,
    );
    if (values != null) {
      _value = DateFormat('MM/dd/yyyy').format(values[0]!);
      _txtController.text = _value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: widget.titleWidth.w,
          margin: EdgeInsets.only(right: 5.w),
          child: BaseText(text: widget.title, textAlign: TextAlign.end,),
        ),
        SizedBox(
          width: widget.textFieldWidth.w,
          height: 30.h,
          child: TextFormField(
            controller: _txtController,
            readOnly: true,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                borderSide: BorderSide(color: Color(0xFFFFFFFF)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                borderSide: BorderSide(
                  color: Color(0xFF1C89FF),
                ),
              ),
              contentPadding: const EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
              suffixIcon: const Icon(Icons.calendar_month, size: 16,),
              hintText: 'Select',
              hintStyle: TextStyle(
                color: const Color(0xFF000000).withOpacity(0.5),
              ),
            ),
            style: TextStyle(
              fontSize: 4.sp
            ),
            onTap: () => _showCalendar(),
            onChanged: (value) => _value = value,
          ),
        )
      ],
    );
  }
}