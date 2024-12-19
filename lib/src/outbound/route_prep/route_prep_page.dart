import 'route_prep.dart';

class RoutePrepPage extends StatefulWidget {

  const RoutePrepPage({
    super.key,
  });

  @override
  State<RoutePrepPage> createState() => _CreateState();
}

class _CreateState extends State<RoutePrepPage> {

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
      route: '/route_prep',
      title: 'Outbound / Route Prep',
      body: BaseText(text: 'route_prep'),
    );
  }
}