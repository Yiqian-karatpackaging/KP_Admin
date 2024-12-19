import 'repackage.dart';

class RepackagePage extends StatefulWidget {

  const RepackagePage({
    super.key,
  });

  @override
  State<RepackagePage> createState() => _CreateState();
}

class _CreateState extends State<RepackagePage> {

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
      route: '/repackage',
      title: 'Returns / Repackage',
      body: BaseText(text: 'repackage'),
    );
  }
}