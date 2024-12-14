import 'inventory_count_progress_dashboard.dart';

class InventoryCountProgressDashboardPage extends StatefulWidget {

  const InventoryCountProgressDashboardPage({
    super.key,
  });

  @override
  State<InventoryCountProgressDashboardPage> createState() => _CreateState();
}

class _CreateState extends State<InventoryCountProgressDashboardPage> {

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
      route: '/inventory_count_progress_dashboard',
      title: 'Inventory / Inventory Count Progress Dashboard',
      body: BaseText(text: 'inventory_count_progress_dashboard'),
    );
  }
}