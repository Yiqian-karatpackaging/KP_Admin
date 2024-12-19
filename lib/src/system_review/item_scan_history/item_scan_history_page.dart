import 'item_scan_history.dart';

class ItemScanHistoryPage extends StatefulWidget {

  const ItemScanHistoryPage({
    super.key,
  });

  @override
  State<ItemScanHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<ItemScanHistoryPage> {

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
      route: '/item_scan_history',
      title: 'System Review / Item Scan History',
      body: BaseText(text: 'item_scan_history'),
    );
  }
}