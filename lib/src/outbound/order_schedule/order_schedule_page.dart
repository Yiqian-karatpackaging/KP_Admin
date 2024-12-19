import 'order_schedule.dart';

class OrderSchedulePage extends StatefulWidget {

  const OrderSchedulePage({
    super.key,
  });

  @override
  State<OrderSchedulePage> createState() => _CreateState();
}

class _CreateState extends State<OrderSchedulePage> {

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
      route: '/order_schedule',
      title: 'Outbound / Order Schedule',
      body: BaseText(text: 'order_schedule'),
    );
  }
}