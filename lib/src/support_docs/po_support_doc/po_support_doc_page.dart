import 'po_support_doc.dart';

class POSupportDocPage extends StatefulWidget {

  const POSupportDocPage({
    super.key,
  });

  @override
  State<POSupportDocPage> createState() => _CreateState();
}

class _CreateState extends State<POSupportDocPage> {

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
      route: '/po_support_doc',
      title: 'Support Docs / PO Support Doc',
      body: BaseText(text: 'po_support_doc'),
    );
  }
}