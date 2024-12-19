import 'manufacturing_to_receive.dart';

class ManufacturingToReceivePage extends StatefulWidget {

  const ManufacturingToReceivePage({
    super.key,
  });

  @override
  State<ManufacturingToReceivePage> createState() => _CreateState();
}

class _CreateState extends State<ManufacturingToReceivePage> {

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
      route: '/manufacturing_to_receive',
      title: 'Manufacturing / Manufacturing TO Receive',
      body: BaseText(text: 'manufacturing_to_receive'),
    );
  }
}