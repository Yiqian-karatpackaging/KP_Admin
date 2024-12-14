import 'net_suite_order_sync.dart';

class NetSuiteOrderSyncPage extends StatefulWidget {

  const NetSuiteOrderSyncPage({
    super.key,
  });

  @override
  State<NetSuiteOrderSyncPage> createState() => _CreateState();
}

class _CreateState extends State<NetSuiteOrderSyncPage> {

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
      route: '/net_suite_order_sync',
      title: 'System Configuration / NetSuite Order Sync',
      body: BaseText(text: 'net_suite_order_sync'),
    );
  }
}