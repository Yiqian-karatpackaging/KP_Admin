import 'so_pick_cancel_history.dart';

class SoPickCancelHistoryPage extends StatefulWidget {

  const SoPickCancelHistoryPage({
    super.key,
  });

  @override
  State<SoPickCancelHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<SoPickCancelHistoryPage> {

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
      route: '/so_pick_cancel_history',
      title: 'System Review / SO Pick Cancel History',
      body: BaseText(text: 'so_pick_cancel_history'),
    );
  }
}