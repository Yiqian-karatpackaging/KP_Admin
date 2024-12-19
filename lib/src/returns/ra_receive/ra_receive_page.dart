import 'ra_receive.dart';

class RaReceivePage extends StatefulWidget {

  const RaReceivePage({
    super.key,
  });

  @override
  State<RaReceivePage> createState() => _CreateState();
}

class _CreateState extends State<RaReceivePage> {

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
      route: '/ra_receive',
      title: 'Returns / RA Receive',
      body: BaseText(text: 'ra_receive'),
    );
  }
}