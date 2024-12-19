import 'manufacturing_audit.dart';

class ManufacturingAuditPage extends StatefulWidget {

  const ManufacturingAuditPage({
    super.key,
  });

  @override
  State<ManufacturingAuditPage> createState() => _CreateState();
}

class _CreateState extends State<ManufacturingAuditPage> {

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
      route: '/manufacturing_audit',
      title: 'Manufacturing / Manufacturing Audit',
      body: BaseText(text: 'manufacturing_audit'),
    );
  }
}