import 'po_received.dart';

class POReceivedPage extends StatefulWidget {

  const POReceivedPage({
    super.key,
  });

  @override
  State<POReceivedPage> createState() => _CreateState();
}

class _CreateState extends State<POReceivedPage> {

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
      route: '/po_received',
      title: 'Purchasing / PO Received',
      body: BaseText(text: 'po_received'),
    );
  }
}