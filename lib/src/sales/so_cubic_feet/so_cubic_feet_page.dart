import 'so_cubic_feet.dart';

class SOCubicFeetPage extends StatefulWidget {

  const SOCubicFeetPage({
    super.key,
  });

  @override
  State<SOCubicFeetPage> createState() => _CreateState();
}

class _CreateState extends State<SOCubicFeetPage> {

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
      route: '/so_cubic_feet',
      title: 'Sales / SO Cubic Feet',
      body: BaseText(text: 'so_cubic_feet'),
    );
  }
}