import 'receive_scan.dart';

class ReceiveScanPage extends StatefulWidget {

  const ReceiveScanPage({
    super.key,
  });

  @override
  State<ReceiveScanPage> createState() => _CreateState();
}

class _CreateState extends State<ReceiveScanPage> {

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
      route: '/receive_scan',
      title: 'Receiving / Receive Scan',
      body: BaseText(text: 'receive_scan'),
    );
  }
}