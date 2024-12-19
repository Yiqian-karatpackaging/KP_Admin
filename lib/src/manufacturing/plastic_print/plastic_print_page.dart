import 'plastic_print.dart';

class PlasticPrintPage extends StatefulWidget {

  const PlasticPrintPage({
    super.key,
  });

  @override
  State<PlasticPrintPage> createState() => _CreateState();
}

class _CreateState extends State<PlasticPrintPage> {

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
      route: '/plastic_print',
      title: 'Manufacturing / Plastic Print',
      body: BaseText(text: 'plastic_print'),
    );
  }
}