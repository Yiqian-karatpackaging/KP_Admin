import 'driver_routes.dart';

class DriverRoutesPage extends StatefulWidget {

  const DriverRoutesPage({
    super.key,
  });

  @override
  State<DriverRoutesPage> createState() => _CreateState();
}

class _CreateState extends State<DriverRoutesPage> {

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
      route: '/driver_routes',
      title: 'Outbound / Driver Routes',
      body: BaseText(text: 'driver_routes'),
    );
  }
}