import 'ups_account.dart';

class UPSAccountPage extends StatefulWidget {

  const UPSAccountPage({
    super.key,
  });

  @override
  State<UPSAccountPage> createState() => _CreateState();
}

class _CreateState extends State<UPSAccountPage> {

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
      route: '/ups_account',
      title: 'System Configuration / UPS Account',
      body: BaseText(text: 'ups_account'),
    );
  }
}