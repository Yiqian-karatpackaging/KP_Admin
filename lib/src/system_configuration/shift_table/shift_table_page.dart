import 'shift_table.dart';

class ShiftTablePage extends StatefulWidget {

  const ShiftTablePage({
    super.key,
  });

  @override
  State<ShiftTablePage> createState() => _CreateState();
}

class _CreateState extends State<ShiftTablePage> {

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
      route: '/shift_table',
      title: 'System Configuration / Shift Table',
      body: BaseText(text: 'shift_table'),
    );
  }
}