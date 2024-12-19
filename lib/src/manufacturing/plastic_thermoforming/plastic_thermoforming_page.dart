import 'plastic_thermoforming.dart';

class PlasticThermoformingPage extends StatefulWidget {

  const PlasticThermoformingPage({
    super.key,
  });

  @override
  State<PlasticThermoformingPage> createState() => _CreateState();
}

class _CreateState extends State<PlasticThermoformingPage> {

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
      route: '/plastic_thermoforming',
      title: 'Manufacturing / Plastic Thermoforming',
      body: BaseText(text: 'plastic_thermoforming'),
    );
  }
}