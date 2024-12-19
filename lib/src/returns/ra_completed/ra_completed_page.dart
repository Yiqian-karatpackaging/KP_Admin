import 'ra_completed.dart';

class RaCompletedPage extends StatefulWidget {

  const RaCompletedPage({
    super.key,
  });

  @override
  State<RaCompletedPage> createState() => _CreateState();
}

class _CreateState extends State<RaCompletedPage> {

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
      route: '/ra_completed',
      title: 'Returns / RA Completed',
      body: BaseText(text: 'ra_completed'),
    );
  }
}