import 'picker_kpi_report.dart';

class PickerKpiReportPage extends StatefulWidget {

  const PickerKpiReportPage({
    super.key,
  });

  @override
  State<PickerKpiReportPage> createState() => _CreateState();
}

class _CreateState extends State<PickerKpiReportPage> {

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
      route: '/picker_kpi_report',
      title: 'System Review / Picker KPI Report',
      body: BaseText(text: 'picker_kpi_report'),
    );
  }
}