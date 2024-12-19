import 'invoice_signature.dart';

class InvoiceSignaturePage extends StatefulWidget {

  const InvoiceSignaturePage({
    super.key,
  });

  @override
  State<InvoiceSignaturePage> createState() => _CreateState();
}

class _CreateState extends State<InvoiceSignaturePage> {

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
      route: '/invoice_signature',
      title: 'Outbound / Invoice Signature',
      body: BaseText(text: 'invoice_signature'),
    );
  }
}