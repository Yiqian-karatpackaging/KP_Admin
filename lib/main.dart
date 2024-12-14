import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kp_admin/routers/menu_items.dart';
import 'package:kp_admin/routers/pages.dart';
import 'package:kp_admin/src/login/login_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          builder: (context, child) {
            return MediaQuery(
              // data: MediaQuery.of(context),
              data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1.0)),
              child: FlutterEasyLoading(
                child: child!,
              ),
            );
          },
          // home: LoginPage(),
          onGenerateRoute: (settings) {
            final page = Pages.getPageWidget(settings);
            if (page != null) {
              return PageRouteBuilder(
                settings: settings,
                pageBuilder: (_, __, ___) => page,
                transitionsBuilder: (_, anim, __, child) {
                  return FadeTransition(
                    opacity: anim,
                    child: child,
                  );
                },
              );
            }
            return null;
          },
        );
      },
      child: Container(),
    );
  }
}

