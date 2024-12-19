import 'put_away_history.dart';

class PutAwayHistoryPage extends StatefulWidget {

  const PutAwayHistoryPage({
    super.key,
  });

  @override
  State<PutAwayHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<PutAwayHistoryPage> {

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
      route: '/put_away_history',
      title: 'Returns / Put Away History',
      body: BaseText(text: 'put_away_history'),
    );
  }
}