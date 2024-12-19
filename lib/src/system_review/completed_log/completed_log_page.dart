import 'completed_log.dart';

class CompletedLogPage extends StatefulWidget {

  const CompletedLogPage({
    super.key,
  });

  @override
  State<CompletedLogPage> createState() => _CreateState();
}

class _CreateState extends State<CompletedLogPage> {

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
      route: '/completed_log',
      title: 'System Review / Completed Log',
      body: BaseText(text: 'completed_log'),
    );
  }
}