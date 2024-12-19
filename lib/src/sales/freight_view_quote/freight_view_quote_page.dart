import 'freight_view_quote.dart';

class FreightViewQuotePage extends StatefulWidget {

  const FreightViewQuotePage({
    super.key,
  });

  @override
  State<FreightViewQuotePage> createState() => _CreateState();
}

class _CreateState extends State<FreightViewQuotePage> {

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
      route: '/freight_view_quote',
      title: 'Sales / Freightview Quote',
      body: BaseText(text: 'freight_view_quote'),
    );
  }
}