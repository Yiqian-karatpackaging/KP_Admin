import 'ns_transfer_order.dart';

class NSTransferOrderPage extends StatefulWidget {

  const NSTransferOrderPage({
    super.key,
  });

  @override
  State<NSTransferOrderPage> createState() => _CreateState();
}

class _CreateState extends State<NSTransferOrderPage> {

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
      route: '/ns_transfer_order',
      title: 'Purchasing / NS Transfer Order',
      body: BaseText(text: 'ns_transfer_order'),
    );
  }
}