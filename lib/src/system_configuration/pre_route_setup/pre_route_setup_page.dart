import 'pre_route_setup.dart';

class PreRouteSetupPage extends StatefulWidget {

  const PreRouteSetupPage({
    super.key,
  });

  @override
  State<PreRouteSetupPage> createState() => _CreateState();
}

class _CreateState extends State<PreRouteSetupPage> {

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
      route: '/pre_route_setup',
      title: 'System Configuration / Pre-Route Setup',
      body: BaseText(text: 'pre_route_setup'),
    );
  }
}