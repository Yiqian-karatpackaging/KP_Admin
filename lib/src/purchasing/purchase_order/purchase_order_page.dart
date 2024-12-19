import 'purchase_order.dart';

class PurchaseOrderPage extends StatefulWidget {

  const PurchaseOrderPage({
    super.key,
  });

  @override
  State<  PurchaseOrderPage> createState() => _CreateState();
}

class _CreateState extends State<PurchaseOrderPage> {

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
      route: '/purchase_order',
      title: 'Purchasing / Purchase Order',
      body: BaseText(text: 'purchase_order'),
    );
  }
}