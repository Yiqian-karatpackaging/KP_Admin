import 'pickup_queue.dart';

class PickupQueuePage extends StatefulWidget {

  const PickupQueuePage({
    super.key,
  });

  @override
  State<PickupQueuePage> createState() => _CreateState();
}

class _CreateState extends State<PickupQueuePage> {

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
      route: '/3p_pickup_queue',
      title: 'Outbound / 3P Pickup Queue',
      body: BaseText(text: '3p_pickup_queue'),
    );
  }
}