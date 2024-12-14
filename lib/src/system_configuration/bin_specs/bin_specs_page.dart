import 'bin_specs.dart';

class BinSpecsPage extends StatefulWidget {

  const BinSpecsPage({
    super.key,
  });

  @override
  State<BinSpecsPage> createState() => _CreateState();
}

class _CreateState extends State<BinSpecsPage> {

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
      route: '/bin_specs',
      title: 'System Configuration / Bin Specs',
      body: BaseText(text: 'bin_specs'),
    );
  }
}