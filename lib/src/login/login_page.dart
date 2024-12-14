import 'package:flutter/material.dart';
import 'package:kp_admin/src/dashboard/dashboard_page.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _CreateState();
}

class _CreateState extends State<LoginPage> {

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
    return Container(
      color: Colors.white,
      child: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/');
            // final Map<String, WidgetBuilder> widgetRoutes = {
            //   'dashboard': (context) => const DashboardPage(),
            // };
            // Navigator.pushReplacement(
            //   context,
            //   MaterialPageRoute(builder: widgetRoutes['dashboard']!),
            // );
          },
          child: Text('login'),
        ),
      ),
    );
  }
}