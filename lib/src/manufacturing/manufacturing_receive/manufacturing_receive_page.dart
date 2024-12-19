import 'manufacturing_receive.dart';

class ManufacturingReceivePage extends StatefulWidget {

  const ManufacturingReceivePage({
    super.key,
  });

  @override
  State<ManufacturingReceivePage> createState() => _CreateState();
}

class _CreateState extends State<ManufacturingReceivePage> {

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
      route: '/manufacturing_receive',
      title: 'Manufacturing / Manufacturing PO Received',
      body: BaseText(text: 'manufacturing_receive'),
    );
  }
}