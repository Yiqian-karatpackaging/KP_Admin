import 'driver_sign_out.dart';

class DriverSignOutPage extends StatefulWidget {

  const DriverSignOutPage({
    super.key,
  });

  @override
  State<DriverSignOutPage> createState() => _CreateState();
}

class _CreateState extends State<DriverSignOutPage> {

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
      route: '/3pl_driver_sign_out',
      title: 'Outbound / 3PL Driver Sign Out',
      body: BaseText(text: '3pl_driver_sign_out'),
    );
  }
}