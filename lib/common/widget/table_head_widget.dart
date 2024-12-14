import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kp_admin/common/utils/method.dart';
import 'widget.dart';

class TableHeadWidget extends StatefulWidget {
  final List<Map<String, String>>? filterData;
  final List<Map<String, String>>? menuButtonData;
  final Function? callBack;

  const TableHeadWidget({
    this.filterData,
    this.menuButtonData,
    this.callBack,
    super.key,
  });

  @override
  State<TableHeadWidget> createState() => _CreateState();
}

class _CreateState extends State<TableHeadWidget> {
  List<Map<String, String>> _filterData = [];

  List<Map<String, String>> _menuButtonData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _filterData = widget.filterData ?? [];
    _menuButtonData = widget.menuButtonData ?? [];
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: !fxEmpty(_menuButtonData),
            child: Wrap(
              spacing: 8.w, // 子组件之间的水平间距
              runSpacing: 8.h, // 子组件之间的垂直间距
              alignment: WrapAlignment.start, // 主轴方向对齐方式
              children: List.generate(_filterData.length, (index) {
                final filter = _filterData[index];
                Widget? widget;
                if (filter['type'] == 'calendar') {
                  widget = SearchCalendarTextFieldWidget(
                      title: filter['title']!,
                      titleWidth: 30,
                      onChanged: (value) {},);
                } else if (filter['type'] == 'select') {
                  widget = SearchDropdownWidget(
                      title: filter['title']!,
                      titleWidth: 30,
                      onChanged: (value) {},);
                } else if (filter['type'] == 'checkBox') {
                  widget = SearchCheckBoxWidget(
                      title: filter['title']!,
                      titleWidth: 30,
                      onChanged: (value) {},);
                } else {
                  widget = SearchTextFieldWidget(
                    title: filter['title']!,
                    titleWidth: 30,
                  );
                }
                return SizedBox(
                  width: 80.w,
                  child: widget,
                );
              }),
            ),
          ),
          Visibility(
            visible: !fxEmpty(_menuButtonData),
            child: Container(
              margin: EdgeInsets.only(
                left: 10.w,
                top: 8.h,
              ),
              child: Wrap(
                spacing: 8.w, // 子组件之间的水平间距
                runSpacing: 8.h,
                alignment: WrapAlignment.start, // 主轴方向对齐方式
                children: List.generate(_menuButtonData.length, (index) {
                  return BaseText(
                    text: _menuButtonData[index]['title']!,
                    textColor: Colors.white,
                    bgColor: Colors.blue,
                    padding: EdgeInsets.symmetric(
                      vertical: 4.h,
                      horizontal: 4.w,
                    ),
                    borderRadius: 1.w,
                    onTap: () {
                      if (_menuButtonData[index]['id'] == 'search' &&
                          !fxEmpty(widget.callBack)) {
                        widget.callBack!({'id':'search', 'value': _filterData});
                      } else if (!fxEmpty(widget.callBack)) {
                        widget.callBack!(_menuButtonData[index]);
                      }
                    },
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
