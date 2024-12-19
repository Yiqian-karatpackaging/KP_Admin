import 'cycle_count_kpi.dart';

class CycleCountKpiPage extends StatefulWidget {

  const CycleCountKpiPage({
    super.key,
  });

  @override
  State<CycleCountKpiPage> createState() => _CreateState();
}

class _CreateState extends State<CycleCountKpiPage> {

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
      route: '/cycle_count_kpi',
      title: 'System Review / Cycle Count KPI',
      body: BaseText(text: 'cycle_count_kpi'),
    );
  }
}