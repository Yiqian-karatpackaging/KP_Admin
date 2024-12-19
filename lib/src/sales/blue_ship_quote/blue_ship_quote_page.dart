import 'blue_ship_quote.dart';

class BlueShipQuotePage extends StatefulWidget {

  const BlueShipQuotePage({
    super.key,
  });

  @override
  State<BlueShipQuotePage> createState() => _CreateState();
}

class _CreateState extends State<BlueShipQuotePage> {

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
      route: '/blue_ship_quote',
      title: 'Sales / Blue Ship Quote',
      body: BaseText(text: 'blue_ship_quote'),
    );
  }
}