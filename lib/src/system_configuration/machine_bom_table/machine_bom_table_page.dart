import 'machine_bom_table.dart';

class MachineBomTablePage extends StatefulWidget {

  const MachineBomTablePage({
    super.key,
  });

  @override
  State<MachineBomTablePage> createState() => _CreateState();
}

class _CreateState extends State<MachineBomTablePage> {

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
      route: '/machine_bom_table',
      title: 'System Configuration / Machine/BOM Table',
      body: BaseText(text: 'machine_bom_table'),
    );
  }
}