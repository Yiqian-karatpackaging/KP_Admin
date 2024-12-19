import 'transfer_inventory.dart';

class TransferInventoryPage extends StatefulWidget {

  const TransferInventoryPage({
    super.key,
  });

  @override
  State<TransferInventoryPage> createState() => _CreateState();
}

class _CreateState extends State<TransferInventoryPage> {

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
      route: '/transfer_inventory',
      title: 'Receiving / Transfer Inventory',
      body: BaseText(text: 'transfer_inventory'),
    );
  }
}