import 'paper_printing.dart';

class PaperPrintingPage extends StatefulWidget {

  const PaperPrintingPage({
    super.key,
  });

  @override
  State<PaperPrintingPage> createState() => _CreateState();
}

class _CreateState extends State<PaperPrintingPage> {

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
      route: '/paper_printing',
      title: 'Manufacturing / Paper Printing',
      body: BaseText(text: 'paper_printing'),
    );
  }
}