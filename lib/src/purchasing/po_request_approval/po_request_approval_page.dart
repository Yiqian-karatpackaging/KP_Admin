import 'po_request_approval.dart';

class PORequestApprovalPage extends StatefulWidget {

  const PORequestApprovalPage({
    super.key,
  });

  @override
  State<PORequestApprovalPage> createState() => _CreateState();
}

class _CreateState extends State<PORequestApprovalPage> {

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
      route: '/po_request_approval',
      title: 'Purchasing / PO Request Approval',
      body: BaseText(text: 'po_request_approval'),
    );
  }
}