import 'plastic_recycle.dart';

class PlasticRecyclePage extends StatefulWidget {

  const PlasticRecyclePage({
    super.key,
  });

  @override
  State<PlasticRecyclePage> createState() => _CreateState();
}

class _CreateState extends State<PlasticRecyclePage> {

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
      route: '/plastic_recycle',
      title: 'Manufacturing / Plastic Recycle',
      body: BaseText(text: 'plastic_recycle'),
    );
  }
}