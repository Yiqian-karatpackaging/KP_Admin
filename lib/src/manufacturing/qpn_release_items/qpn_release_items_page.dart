import 'qpn_release_items.dart';

class QPNReleaseItemsPage extends StatefulWidget {

  const QPNReleaseItemsPage({
    super.key,
  });

  @override
  State<QPNReleaseItemsPage> createState() => _CreateState();
}

class _CreateState extends State<QPNReleaseItemsPage> {

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
      route: '/qpn_release_items',
      title: 'Manufacturing / QPN Release Items',
      body: BaseText(text: 'qpn_release_items'),
    );
  }
}