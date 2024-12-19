import 'receiving_kpi_report.dart';

class ReceivingKpiReportPage extends StatefulWidget {

  const ReceivingKpiReportPage({
    super.key,
  });

  @override
  State<ReceivingKpiReportPage> createState() => _CreateState();
}

class _CreateState extends State<ReceivingKpiReportPage> {

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
      route: '/receiving_kpi_report',
      title: 'System Review / Receiving KPI Report',
      body: BaseText(text: 'receiving_kpi_report'),
    );
  }
}