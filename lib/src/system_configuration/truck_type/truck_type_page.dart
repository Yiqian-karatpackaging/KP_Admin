import 'truck_type.dart';

class TruckTypePage extends StatefulWidget {

  const TruckTypePage({
    super.key,
  });

  @override
  State<TruckTypePage> createState() => _CreateState();
}

class _CreateState extends State<TruckTypePage> {

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
      route: '/truck_type',
      title: 'System Configuration / Truck Type',
      body: BaseText(text: 'truck_type'),
    );
  }
}