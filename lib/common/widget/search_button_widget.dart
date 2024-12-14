import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'base_text.dart';

class SearchButtonWidget extends StatefulWidget {

  final String title;
  final Function onTap;

  const SearchButtonWidget({
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  State<SearchButtonWidget> createState() => _CreateState();
}

class _CreateState extends State<SearchButtonWidget> {

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
    return GestureDetector(
        onTap: () => widget.onTap(),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          margin: EdgeInsets.only(right: 5.w),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(2)),
            color: Colors.blue,
          ),
          child: BaseText(
            text: widget.title,
            textColor: Colors.white,
          ),
        )
    );
  }
}