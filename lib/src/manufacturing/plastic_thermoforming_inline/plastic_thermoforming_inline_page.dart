import 'plastic_thermoforming_inline.dart';

class PlasticThermoformingInlinePage extends StatefulWidget {

  const PlasticThermoformingInlinePage({
    super.key,
  });

  @override
  State<PlasticThermoformingInlinePage> createState() => _CreateState();
}

class _CreateState extends State<PlasticThermoformingInlinePage> {

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
      route: '/plastic_thermoforming_inline',
      title: 'Manufacturing / Plastic Thermoforming Inline',
      body: BaseText(text: 'plastic_thermoforming_inline'),
    );
  }
}