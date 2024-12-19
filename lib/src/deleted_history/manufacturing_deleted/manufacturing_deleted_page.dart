import 'manufacturing_deleted.dart';

class ManufacturingDeletedPage extends StatefulWidget {

  const ManufacturingDeletedPage({
    super.key,
  });

  @override
  State<ManufacturingDeletedPage> createState() => _CreateState();
}

class _CreateState extends State<ManufacturingDeletedPage> {

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
      route: '/manufacturing_deleted',
      title: 'Deleted History / Manufacturing Deleted',
      body: BaseText(text: 'manufacturing_deleted'),
    );
  }
}