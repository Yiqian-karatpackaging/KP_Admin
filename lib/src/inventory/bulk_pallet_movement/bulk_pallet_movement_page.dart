import 'bulk_pallet_movement.dart';

class BulkPalletMovementPage extends StatefulWidget {

  const BulkPalletMovementPage({
    super.key,
  });

  @override
  State<BulkPalletMovementPage> createState() => _CreateState();
}

class _CreateState extends State<BulkPalletMovementPage> {

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
      route: '/bulk_pallet_movement',
      title: 'Inventory / Bulk Pallet Movement',
      body: BaseText(text: 'bulk_pallet_movement'),
    );
  }
}