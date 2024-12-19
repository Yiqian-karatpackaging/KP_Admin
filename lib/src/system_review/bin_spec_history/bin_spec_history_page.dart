import 'bin_spec_history.dart';

class BinSpecHistoryPage extends StatefulWidget {

  const BinSpecHistoryPage({
    super.key,
  });

  @override
  State<BinSpecHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<BinSpecHistoryPage> {

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
      route: '/bin_spec_history',
      title: 'System Review / Bin Spec History',
      body: BaseText(text: 'bin_spec_history'),
    );
  }
}