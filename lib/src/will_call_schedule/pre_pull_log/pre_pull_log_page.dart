import 'pre_pull_log.dart';

class PrePullLogPage extends StatefulWidget {

  const PrePullLogPage({
    super.key,
  });

  @override
  State<PrePullLogPage> createState() => _CreateState();
}

class _CreateState extends State<PrePullLogPage> {

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
      route: '/pre_pull_log',
      title: 'Will Call Schedule / Pre-Pull Log',
      body: BaseText(text: 'pre_pull_log'),
    );
  }
}