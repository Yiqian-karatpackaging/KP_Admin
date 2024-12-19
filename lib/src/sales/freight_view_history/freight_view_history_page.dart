import 'freight_view_history.dart';

class FreightViewHistoryPage extends StatefulWidget {

  const FreightViewHistoryPage({
    super.key,
  });

  @override
  State<FreightViewHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<FreightViewHistoryPage> {

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
      route: '/freight_view_history',
      title: 'Sales / Freight View History',
      body: BaseText(text: 'freight_view_history'),
    );
  }
}