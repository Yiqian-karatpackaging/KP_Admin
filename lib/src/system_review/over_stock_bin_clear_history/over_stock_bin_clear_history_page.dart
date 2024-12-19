import 'over_stock_bin_clear_history.dart';

class OverStockBinClearHistoryPage extends StatefulWidget {

  const OverStockBinClearHistoryPage({
    super.key,
  });

  @override
  State<OverStockBinClearHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<OverStockBinClearHistoryPage> {

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
      route: '/over_stock_bin_clear_history',
      title: 'System Review / Over Stock Bin Clear History',
      body: BaseText(text: 'over_stock_bin_clear_history'),
    );
  }
}