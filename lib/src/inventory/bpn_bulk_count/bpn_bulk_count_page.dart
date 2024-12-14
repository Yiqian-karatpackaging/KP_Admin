import 'bpn_bulk_count.dart';

class BPNBulkCountPage extends StatefulWidget {

  const BPNBulkCountPage({
    super.key,
  });

  @override
  State<BPNBulkCountPage> createState() => _CreateState();
}

class _CreateState extends State<BPNBulkCountPage> {

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
      route: '/bpn_bulk_count',
      title: 'Inventory / BPN Bulk Count',
      body: BaseText(text: 'bpn_bulk_count'),
    );
  }
}