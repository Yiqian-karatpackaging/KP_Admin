import 'replenishment_kpi.dart';

class ReplenishmentKpiPage extends StatefulWidget {

  const ReplenishmentKpiPage({
    super.key,
  });

  @override
  State<ReplenishmentKpiPage> createState() => _CreateState();
}

class _CreateState extends State<ReplenishmentKpiPage> {

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
      route: '/replenishment_kpi',
      title: 'System Review / Replenishment KPI',
      body: BaseText(text: 'replenishment_kpi'),
    );
  }
}