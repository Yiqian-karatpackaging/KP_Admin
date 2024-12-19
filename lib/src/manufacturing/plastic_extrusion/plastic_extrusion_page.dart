import 'plastic_extrusion.dart';

class PlasticExtrusionPage extends StatefulWidget {

  const PlasticExtrusionPage({
    super.key,
  });

  @override
  State<PlasticExtrusionPage> createState() => _CreateState();
}

class _CreateState extends State<PlasticExtrusionPage> {

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
      route: '/plastic_extrusion',
      title: 'Manufacturing / Plastic Extrusion',
      body: BaseText(text: 'plastic_extrusion'),
    );
  }
}