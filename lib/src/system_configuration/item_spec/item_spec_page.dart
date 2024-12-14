import 'item_spec.dart';

class ItemSpecPage extends StatefulWidget {

  const ItemSpecPage({
    super.key,
  });

  @override
  State<ItemSpecPage> createState() => _CreateState();
}

class _CreateState extends State<ItemSpecPage> {

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
      route: '/item_spec',
      title: 'System Configuration / Item Spec',
      body: BaseText(text: 'item_spec'),
    );
  }
}