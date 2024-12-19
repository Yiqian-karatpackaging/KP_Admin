import 'checker_kpi_report.dart';

class CheckerKpiReportPage extends StatefulWidget {

  const CheckerKpiReportPage({
    super.key,
  });

  @override
  State<CheckerKpiReportPage> createState() => _CreateState();
}

class _CreateState extends State<CheckerKpiReportPage> {

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
      route: '/checker_kpi_report',
      title: 'System Review / Checker KPI Report',
      body: BaseText(text: 'checker_kpi_report'),
    );
  }
}