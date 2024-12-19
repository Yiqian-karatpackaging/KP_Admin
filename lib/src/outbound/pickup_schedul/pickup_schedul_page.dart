import 'pickup_schedul.dart';

class PickupSchedulPage extends StatefulWidget {

  const PickupSchedulPage({
    super.key,
  });

  @override
  State<PickupSchedulPage> createState() => _CreateState();
}

class _CreateState extends State<PickupSchedulPage> {

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
      route: '/3p_pickup_schedul',
      title: 'Outbound / 3P Pickup Schedul',
      body: BaseText(text: '3p_pickup_schedul'),
    );
  }
}