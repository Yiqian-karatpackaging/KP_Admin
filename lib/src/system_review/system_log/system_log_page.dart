import 'system_log.dart';

class SystemLogPage extends StatefulWidget {

  const SystemLogPage({
    super.key,
  });

  @override
  State<SystemLogPage> createState() => _CreateState();
}

class _CreateState extends State<SystemLogPage> {

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
      route: '/system_log',
      title: 'System Review / System Log',
      body: BaseText(text: 'system_log'),
    );
  }
}