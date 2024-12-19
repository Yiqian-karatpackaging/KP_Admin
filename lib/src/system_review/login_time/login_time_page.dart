import 'login_time.dart';

class LoginTimePage extends StatefulWidget {

  const LoginTimePage({
    super.key,
  });

  @override
  State<LoginTimePage> createState() => _CreateState();
}

class _CreateState extends State<LoginTimePage> {

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
    return CustomScaffold(
      route: '/login_time',
      title: 'System Review / Login Time',
      body: BaseText(text: 'login_time'),
    );
  }
}