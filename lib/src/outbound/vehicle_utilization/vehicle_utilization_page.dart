import 'vehicle_utilization.dart';

class VehicleUtilizationPage extends StatefulWidget {

  const VehicleUtilizationPage({
    super.key,
  });

  @override
  State<VehicleUtilizationPage> createState() => _CreateState();
}

class _CreateState extends State<VehicleUtilizationPage> {

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
      route: '/vehicle_utilization',
      title: 'System Configuration / Vehicle Utilization',
      body: BaseText(text: 'vehicle_utilization'),
    );
  }
}