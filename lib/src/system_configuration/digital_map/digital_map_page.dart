import 'digital_map.dart';

class DigitalMapPage extends StatefulWidget {

  const DigitalMapPage({
    super.key,
  });

  @override
  State<DigitalMapPage> createState() => _CreateState();
}

class _CreateState extends State<DigitalMapPage> {

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
      route: '/digital_map',
      title: 'System Configuration / Digital Map',
      body: BaseText(text: 'digital_map'),
    );
  }
}