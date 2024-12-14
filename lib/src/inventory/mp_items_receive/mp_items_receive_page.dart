import 'mp_items_receive.dart';

class MPItemsReceivePage extends StatefulWidget {

  const MPItemsReceivePage({
    super.key,
  });

  @override
  State<MPItemsReceivePage> createState() => _CreateState();
}

class _CreateState extends State<MPItemsReceivePage> {

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
      route: '/mp_items_receive',
      title: 'Inventory / MP Items Receive',
      body: BaseText(text: 'mp_items_receive'),
    );
  }
}