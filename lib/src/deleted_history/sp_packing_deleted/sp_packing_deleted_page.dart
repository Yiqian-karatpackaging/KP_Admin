import 'sp_packing_deleted.dart';

class SpPackingDeletedPage extends StatefulWidget {

  const SpPackingDeletedPage({
    super.key,
  });

  @override
  State<SpPackingDeletedPage> createState() => _CreateState();
}

class _CreateState extends State<SpPackingDeletedPage> {

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
      route: '/sp_packing_deleted',
      title: 'Deleted History / SP Packing Deleted',
      body: BaseText(text: 'sp_packing_deleted'),
    );
  }
}