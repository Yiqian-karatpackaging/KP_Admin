import 'qc_items.dart';

class QCItemsPage extends StatefulWidget {

  const QCItemsPage({
    super.key,
  });

  @override
  State<QCItemsPage> createState() => _CreateState();
}

class _CreateState extends State<QCItemsPage> {

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
      route: '/qc_items',
      title: 'Manufacturing / QC Items',
      body: BaseText(text: 'qc_items'),
    );
  }
}