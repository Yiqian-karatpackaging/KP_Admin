import 'expired_items.dart';

class ExpiredItemsPage extends StatefulWidget {

  const ExpiredItemsPage({
    super.key,
  });

  @override
  State<ExpiredItemsPage> createState() => _CreateState();
}

class _CreateState extends State<ExpiredItemsPage> {

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
      route: '/expired_items',
      title: 'Returns / Expired Items',
      body: BaseText(text: 'expired_items'),
    );
  }
}