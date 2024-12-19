import 'internal_usage_history.dart';

class InternalUsageHistoryPage extends StatefulWidget {

  const InternalUsageHistoryPage({
    super.key,
  });

  @override
  State<InternalUsageHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<InternalUsageHistoryPage> {

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
      route: '/internal_usage_history',
      title: 'System Review / Internal Usage History',
      body: BaseText(text: 'internal_usage_history'),
    );
  }
}