import 'put_away.dart';

class PutAwayPage extends StatefulWidget {

  const PutAwayPage({
    super.key,
  });

  @override
  State<PutAwayPage> createState() => _CreateState();
}

class _CreateState extends State<PutAwayPage> {

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
      route: '/put_away',
      title: 'Returns / Put Away',
      body: BaseText(text: 'put_away'),
    );
  }
}