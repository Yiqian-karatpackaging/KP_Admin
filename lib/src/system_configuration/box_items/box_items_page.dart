import 'box_items.dart';

class BoxItemsPage extends StatefulWidget {

  const BoxItemsPage({
    super.key,
  });

  @override
  State<BoxItemsPage> createState() => _CreateState();
}

class _CreateState extends State<BoxItemsPage> {

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
      route: '/box_items',
      title: 'System Configuration / Box Items',
      body: BaseText(text: 'box_items'),
    );
  }
}