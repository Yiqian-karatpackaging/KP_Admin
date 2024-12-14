import 'recycle_resin_table.dart';

class RecycleResinTablePage extends StatefulWidget {

  const RecycleResinTablePage({
    super.key,
  });

  @override
  State<RecycleResinTablePage> createState() => _CreateState();
}

class _CreateState extends State<RecycleResinTablePage> {

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
      route: '/recycle_resin_table',
      title: 'System Configuration / Recycle Resin Table',
      body: BaseText(text: 'recycle_resin_table'),
    );
  }
}