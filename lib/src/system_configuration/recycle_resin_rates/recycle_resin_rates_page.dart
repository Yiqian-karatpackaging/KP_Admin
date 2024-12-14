import 'recycle_resin_rates.dart';

class RecycleResinRatesPage extends StatefulWidget {

  const RecycleResinRatesPage({
    super.key,
  });

  @override
  State<RecycleResinRatesPage> createState() => _CreateState();
}

class _CreateState extends State<RecycleResinRatesPage> {

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
      route: '/recycle_resin_rates',
      title: 'System Configuration / Recycle Resin Rates',
      body: BaseText(text: 'recycle_resin_rates'),
    );
  }
}