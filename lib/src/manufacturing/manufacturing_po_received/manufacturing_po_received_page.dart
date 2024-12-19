import 'manufacturing_po_received.dart';

class ManufacturingPoReceivedPage extends StatefulWidget {

  const ManufacturingPoReceivedPage({
    super.key,
  });

  @override
  State<ManufacturingPoReceivedPage> createState() => _CreateState();
}

class _CreateState extends State<ManufacturingPoReceivedPage> {

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
      route: '/manufacturing_po_received',
      title: 'Manufacturing / Manufacturing PO Received',
      body: BaseText(text: 'manufacturing_po_received'),
    );
  }
}