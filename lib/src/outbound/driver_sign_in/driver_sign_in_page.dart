import 'driver_sign_in.dart';

class DriverSignInPage extends StatefulWidget {

  const DriverSignInPage({
    super.key,
  });

  @override
  State<DriverSignInPage> createState() => _CreateState();
}

class _CreateState extends State<DriverSignInPage> {

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
      route: '/driver_sign_in',
      title: 'Outbound / Driver Sign In',
      body: BaseText(text: 'driver_sign_in'),
    );
  }
}