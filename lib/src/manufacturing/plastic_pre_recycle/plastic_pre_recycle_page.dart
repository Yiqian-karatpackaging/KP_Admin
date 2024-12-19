import 'plastic_pre_recycle.dart';

class PlasticPreRecyclePage extends StatefulWidget {

  const PlasticPreRecyclePage({
    super.key,
  });

  @override
  State<PlasticPreRecyclePage> createState() => _CreateState();
}

class _CreateState extends State<PlasticPreRecyclePage> {

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
      route: '/plastic_pre_recycle',
      title: 'Manufacturing / Plastic Pre-Recycle',
      body: BaseText(text: 'plastic_pre_recycle'),
    );
  }
}