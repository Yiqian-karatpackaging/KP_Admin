import 'hold_history.dart';

class HoldHistoryPage extends StatefulWidget {

  const HoldHistoryPage({
    super.key,
  });

  @override
  State<HoldHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<HoldHistoryPage> {

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
      route: '/hold_history',
      title: 'System Review / Hold History',
      body: BaseText(text: 'hold_history'),
    );
  }
}