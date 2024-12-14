import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'base_text.dart';

class SearchCheckBoxWidget extends StatefulWidget {

  final Function onChanged;
  final String title;
  final double titleWidth;

  const SearchCheckBoxWidget({
    required this.title,
    required this.onChanged,
    this.titleWidth = 50,
    super.key,
  });

  @override
  State<SearchCheckBoxWidget> createState() => _CreateState();
}

class _CreateState extends State<SearchCheckBoxWidget> {
  
  bool _isSelected = false;
  
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
    return Row(
      children: [
        Container(
          width: widget.titleWidth.w,
          margin: EdgeInsets.only(right: 5.w),
          child: BaseText(text: widget.title, textAlign: TextAlign.end,),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _isSelected = !_isSelected;
            });
            widget.onChanged(_isSelected);
          },
          child: Icon(_isSelected ? Icons.check_box : Icons.check_box_outline_blank, size: 20,),
        )
      ],
    );
  }
}