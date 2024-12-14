import 'internal_request_items_list.dart';

class InternalRequestItemsListPage extends StatefulWidget {

  const InternalRequestItemsListPage({
    super.key,
  });

  @override
  State<InternalRequestItemsListPage> createState() => _CreateState();
}

class _CreateState extends State<InternalRequestItemsListPage> {

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
      route: '/internal_request_items_list',
      title: 'System Configuration / Internal Request Items List',
      body: BaseText(text: 'internal_request_items_list'),
    );
  }
}