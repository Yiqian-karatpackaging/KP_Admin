import 'qpn_release.dart';

class QPNReleasePage extends StatefulWidget {

  const QPNReleasePage({
    super.key,
  });

  @override
  State<QPNReleasePage> createState() => _CreateState();
}

class _CreateState extends State<QPNReleasePage> {

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
      route: '/qpn_release',
      title: 'Manufacturing / QPN Release',
      body: BaseText(text: 'qpn_release'),
    );
  }
}