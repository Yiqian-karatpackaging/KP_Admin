import 'to_receive_scan.dart';

class ToReceiveScanPage extends StatefulWidget {

  const ToReceiveScanPage({
    super.key,
  });

  @override
  State<ToReceiveScanPage> createState() => _CreateState();
}

class _CreateState extends State<ToReceiveScanPage> {

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
      route: '/to_receive_scan',
      title: 'Receiving / TO Receive Scan',
      body: BaseText(text: 'to_receive_scan'),
    );
  }
}