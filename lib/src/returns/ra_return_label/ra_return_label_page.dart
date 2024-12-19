import 'ra_return_label.dart';

class RaReturnLabelPage extends StatefulWidget {

  const RaReturnLabelPage({
    super.key,
  });

  @override
  State<RaReturnLabelPage> createState() => _CreateState();
}

class _CreateState extends State<RaReturnLabelPage> {

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
      route: '/ra_return_label',
      title: 'Returns / RA Return Label',
      body: BaseText(text: 'ra_return_label'),
    );
  }
}