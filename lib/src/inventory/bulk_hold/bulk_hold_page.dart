import 'bulk_hold.dart';

class BulkHoldPage extends StatefulWidget {

  const BulkHoldPage({
    super.key,
  });

  @override
  State<BulkHoldPage> createState() => _CreateState();
}

class _CreateState extends State<BulkHoldPage> {

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
      route: '/bulk_hold',
      title: 'Inventory / Bulk Hold',
      body: BaseText(text: 'bulk_hold'),
    );
  }
}