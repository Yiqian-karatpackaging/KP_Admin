import 'damage_items.dart';

class DamageItemsPage extends StatefulWidget {

  const DamageItemsPage({
    super.key,
  });

  @override
  State<DamageItemsPage> createState() => _CreateState();
}

class _CreateState extends State<DamageItemsPage> {

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
      route: '/damage_items',
      title: 'Returns / Damage Items',
      body: BaseText(text: 'damage_items'),
    );
  }
}