import 'pending_complete_po.dart';

class PendingCompletePoPage extends StatefulWidget {

  const PendingCompletePoPage({
    super.key,
  });

  @override
  State<PendingCompletePoPage> createState() => _CreateState();
}

class _CreateState extends State<PendingCompletePoPage> {

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
      route: '/pending_complete_po',
      title: 'System Review / Pending Complete PO',
      body: BaseText(text: 'pending_complete_po'),
    );
  }
}