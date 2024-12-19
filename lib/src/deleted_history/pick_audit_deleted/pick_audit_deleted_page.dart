import 'pick_audit_deleted.dart';

class PickAuditDeletedPage extends StatefulWidget {

  const PickAuditDeletedPage({
    super.key,
  });

  @override
  State<PickAuditDeletedPage> createState() => _CreateState();
}

class _CreateState extends State<PickAuditDeletedPage> {

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
      route: '/pick_audit_deleted',
      title: 'Deleted History / Pick Audit Deleted',
      body: BaseText(text: 'pick_audit_deleted'),
    );
  }
}