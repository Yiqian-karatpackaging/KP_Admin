import 'package:flutter/material.dart';
import 'package:kp_admin/common/widget/custom_scaffold.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardPage extends StatefulWidget {

  const DashboardPage({
    super.key,
  });

  @override
  State<DashboardPage> createState() => _CreateState();
}

class _CreateState extends State<DashboardPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initEasyLoading();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void _initEasyLoading() {
    EasyLoading.instance
      ..textStyle = TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        color: Color(0xFFFFFFFF),
      )
      ..toastPosition = EasyLoadingToastPosition.bottom
      ..contentPadding = const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      )
    ;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/',
      title: 'Dashboard',
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, '/scan'),
          child: Text(
            'Dashboard',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 36,
            ),
          ),
        )
      ),
    );
  }
}
