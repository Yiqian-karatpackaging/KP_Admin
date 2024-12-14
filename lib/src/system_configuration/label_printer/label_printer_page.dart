import 'label_printer.dart';

class LabelPrinterPage extends StatefulWidget {

  const LabelPrinterPage({
    super.key,
  });

  @override
  State<LabelPrinterPage> createState() => _CreateState();
}

class _CreateState extends State<LabelPrinterPage> {

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

  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/label_printer',
      title: 'System Configuration / Label Printer',
      body: BaseText(text: 'label_printer'),
    );
  }
}