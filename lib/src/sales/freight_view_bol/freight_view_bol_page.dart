import 'freight_view_bol.dart';

class FreightViewBolPage extends StatefulWidget {

  const FreightViewBolPage({
    super.key,
  });

  @override
  State<FreightViewBolPage> createState() => _CreateState();
}

class _CreateState extends State<FreightViewBolPage> {

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
      route: '/freight_view_bol',
      title: 'Sales / Freight View BOL',
      body: BaseText(text: 'freight_view_bol'),
    );
  }
}