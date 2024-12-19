import 'put_away_id.dart';

class PutAwayIdPage extends StatefulWidget {

  const PutAwayIdPage({
    super.key,
  });

  @override
  State<PutAwayIdPage> createState() => _CreateState();
}

class _CreateState extends State<PutAwayIdPage> {

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
      route: '/put_away_id',
      title: 'Returns / Put Away ID',
      body: BaseText(text: 'put_away_id'),
    );
  }
}