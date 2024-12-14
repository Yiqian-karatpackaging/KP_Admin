import 'approval_table.dart';

class ApprovalTablePage extends StatefulWidget {

  const ApprovalTablePage({
    super.key,
  });

  @override
  State<ApprovalTablePage> createState() => _CreateState();
}

class _CreateState extends State<ApprovalTablePage> {

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
      route: '/approval_table',
      title: 'System Configuration / Approval Table',
      body: BaseText(text: 'approval_table'),
    );
  }
}