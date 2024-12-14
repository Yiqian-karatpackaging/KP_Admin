import 'receive_hr_table.dart';

class ReceiveHrTablePage extends StatefulWidget {

  const ReceiveHrTablePage({
    super.key,
  });

  @override
  State<ReceiveHrTablePage> createState() => _CreateState();
}

class _CreateState extends State<ReceiveHrTablePage> {

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
      route: '/receive_hr_table',
      title: 'System Configuration / Receive/HR Table',
      body: BaseText(text: 'receive_hr_table'),
    );
  }
}