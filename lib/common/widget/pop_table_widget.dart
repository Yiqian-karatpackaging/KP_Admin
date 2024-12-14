import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kp_admin/common/widget/widget.dart';
import 'package:operance_datatable/operance_datatable.dart';

class PopTable {
  static void show<T>(
      BuildContext context,
      String title,
      List<T> data,
      List<OperanceDataColumn<T>> column,
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
                      BaseText(
                        text: title,
                        textAlign: TextAlign.center,
                        // fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        textColor: const Color(0xFF323232),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(ctx).pop();
                        },
                        child: const Icon(Icons.close_outlined,),
                      ),
                    ],
                  ),
                  SizedBox(height: 18.h),
                  Expanded(child: PopTableWidget<T>(data, column),),
                ],
              )
          ),
        );
      },
    );
  }
}

class PopTableWidget<T> extends StatefulWidget {

  final List<T> data;

  final List<OperanceDataColumn<T>> column;

  const PopTableWidget(this.data, this.column, {
    super.key,
  });

  @override
  State<PopTableWidget> createState() => _CreateState<T>();
}

class _CreateState<T> extends State<PopTableWidget> {

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
    return OperanceDataTable<T>(
      showHeader: false,
      showFooter: false,
      columns: widget.column as List<OperanceDataColumn<T>>,
      emptyStateBuilder: (BuildContext context) => const EmptyWidget(),
      onFetch: (limit, sort, {bool isInitial = true}) async {
        return (widget.data as List<T>, false);
      },
    );
  }
}