import 'shipping_quote.dart';

class ShippingQuotePage extends StatefulWidget {

  const ShippingQuotePage({
    super.key,
  });

  @override
  State<ShippingQuotePage> createState() => _CreateState();
}

class _CreateState extends State<ShippingQuotePage> {

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
      route: '/shipping_quote',
      title: 'Sales / Shipping Quote',
      body: BaseText(text: 'shipping_quote'),
    );
  }
}