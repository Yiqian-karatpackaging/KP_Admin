import 'delivery_orders.dart';

class DeliveryOrdersPage extends StatefulWidget {

  const DeliveryOrdersPage({
    super.key,
  });

  @override
  State<DeliveryOrdersPage> createState() => _CreateState();
}

class _CreateState extends State<DeliveryOrdersPage> {

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
      route: '/delivery_orders',
      title: 'Outbound / Delivery Orders',
      body: BaseText(text: 'delivery_orders'),
    );
  }
}