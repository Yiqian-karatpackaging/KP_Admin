import 'packing_kpi_report.dart';

class PackingKpiReportPage extends StatefulWidget {

  const PackingKpiReportPage({
    super.key,
  });

  @override
  State<PackingKpiReportPage> createState() => _CreateState();
}

class _CreateState extends State<PackingKpiReportPage> {

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
      route: '/packing_kpi_report',
      title: 'System Review / Packing KPI Report',
      body: BaseText(text: 'packing_kpi_report'),
    );
  }
}