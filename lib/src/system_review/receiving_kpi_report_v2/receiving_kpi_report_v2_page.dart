import 'receiving_kpi_report_v2.dart';

class ReceivingKpiReportV2Page extends StatefulWidget {

  const ReceivingKpiReportV2Page({
    super.key,
  });

  @override
  State<ReceivingKpiReportV2Page> createState() => _CreateState();
}

class _CreateState extends State<ReceivingKpiReportV2Page> {

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
      route: '/receiving_kpi_report_v2',
      title: 'System Review / Receiving KPI Report V2',
      body: BaseText(text: 'receiving_kpi_report_v2'),
    );
  }
}