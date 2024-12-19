import 'ca_inventory_percentage.dart';

class CaInventoryPercentagePage extends StatefulWidget {

  const CaInventoryPercentagePage({
    super.key,
  });

  @override
  State<CaInventoryPercentagePage> createState() => _CreateState();
}

class _CreateState extends State<CaInventoryPercentagePage> {

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
      route: '/ca_inventory_percentage',
      title: 'System Review / CA Inventory Percentage',
      body: BaseText(text: 'ca_inventory_percentage'),
    );
  }
}