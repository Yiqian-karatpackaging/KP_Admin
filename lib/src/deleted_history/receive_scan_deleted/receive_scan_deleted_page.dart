import 'receive_scan_deleted.dart';

class ReceiveScanDeletedPage extends StatefulWidget {

  const ReceiveScanDeletedPage({
    super.key,
  });

  @override
  State<ReceiveScanDeletedPage> createState() => _CreateState();
}

class _CreateState extends State<ReceiveScanDeletedPage> {

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
      route: '/receive_scan_deleted',
      title: 'Deleted History / Receive Scan Deleted',
      body: BaseText(text: 'receive_scan_deleted'),
    );
  }
}