import 'wh_bin_discrepancy.dart';

class WhBinDiscrepancyPage extends StatefulWidget {

  const WhBinDiscrepancyPage({
    super.key,
  });

  @override
  State<WhBinDiscrepancyPage> createState() => _CreateState();
}

class _CreateState extends State<WhBinDiscrepancyPage> {

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
      route: '/wh_bin_discrepancy',
      title: 'System Review / WH Bin Discrepancy',
      body: BaseText(text: 'wh_bin_discrepancy'),
    );
  }
}