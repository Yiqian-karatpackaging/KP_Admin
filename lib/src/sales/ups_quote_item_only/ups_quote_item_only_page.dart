import 'ups_quote_item_only.dart';

class UPSQuoteItemOnlyPage extends StatefulWidget {

  const UPSQuoteItemOnlyPage({
    super.key,
  });

  @override
  State<UPSQuoteItemOnlyPage> createState() => _CreateState();
}

class _CreateState extends State<UPSQuoteItemOnlyPage> {

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
      route: '/ups_quote_item_only',
      title: 'Sales / UPS Quote (Item Only)',
      body: BaseText(text: 'ups_quote_item_only'),
    );
  }
}