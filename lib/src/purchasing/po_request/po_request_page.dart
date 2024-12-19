import 'po_request.dart';

class PORequestPage extends StatefulWidget {

  const PORequestPage({
    super.key,
  });

  @override
  State<PORequestPage> createState() => _CreateState();
}

class _CreateState extends State<PORequestPage> {

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
      route: '/po_request',
      title: 'Purchasing / PO Request',
      body: BaseText(text: 'po_request'),
    );
  }
}