import 'rack_item_categories.dart';

class RackItemCategoriesPage extends StatefulWidget {

  const RackItemCategoriesPage({
    super.key,
  });

  @override
  State<RackItemCategoriesPage> createState() => _CreateState();
}

class _CreateState extends State<RackItemCategoriesPage> {

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
      route: '/rack_item_categories',
      title: 'System Configuration / Rack Item Categories',
      body: BaseText(text: 'rack_item_categories'),
    );
  }
}