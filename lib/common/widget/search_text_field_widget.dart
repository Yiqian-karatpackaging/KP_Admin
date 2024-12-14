import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'base_text.dart';

class SearchTextFieldWidget extends StatefulWidget {

  final Function? onChanged;
  final Function? onFieldSubmitted;
  final String title;
  final String text;
  final String hintText;
  final bool readOnly;
  final bool moreLine;
  final double textWidth;
  final double titleWidth;

  const SearchTextFieldWidget({
    required this.title,
    this.readOnly = false,
    this.moreLine = false,
    this.text = '',
    this.hintText = 'input',
    this.titleWidth = 50,
    this.textWidth = 40,
    this.onChanged,
    this.onFieldSubmitted,
    super.key,
  });

  @override
  State<SearchTextFieldWidget> createState() => _CreateState();
}

class _CreateState extends State<SearchTextFieldWidget> {

  final TextEditingController _txtController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _txtController.text = widget.text;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: widget.moreLine ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Container(
          width: widget.titleWidth.w,
          margin: EdgeInsets.only(right: 5.w),
          child: BaseText(text: widget.title, textAlign: TextAlign.end,),
        ),
        SizedBox(
          width: widget.textWidth.w,
          height: widget.moreLine ? null : 30.h,
          child: TextFormField(
            controller: _txtController,
            readOnly: widget.readOnly,
            enabled: !widget.readOnly,
            maxLines: widget.moreLine ? 5 : 1,
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
              contentPadding: widget.moreLine ? null : const EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
              filled: true,
              fillColor: widget.readOnly ? Color(0xFFEAEAEA) : Colors.white,
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: const Color(0xFF000000).withOpacity(0.5),
              ),
            ),
            style: TextStyle(
                fontSize: 4.sp,
            ),
            onFieldSubmitted: (value) {
              if (widget.onFieldSubmitted != null) {
                widget.onFieldSubmitted!(value);
              }
            },
            onChanged: (value) {
              if (widget.onChanged != null) {
                widget.onChanged!(value);
              }
            },
          ),
        )
      ],
    );
  }
}