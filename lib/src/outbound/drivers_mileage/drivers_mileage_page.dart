import 'drivers_mileage.dart';

class DriversMileagePage extends StatefulWidget {

  const DriversMileagePage({
    super.key,
  });

  @override
  State<DriversMileagePage> createState() => _CreateState();
}

class _CreateState extends State<DriversMileagePage> {

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
      route: '/drivers_mileage',
      title: 'Outbound / Drivers Mileage',
      body: BaseText(text: 'drivers_mileage'),
    );
  }
}