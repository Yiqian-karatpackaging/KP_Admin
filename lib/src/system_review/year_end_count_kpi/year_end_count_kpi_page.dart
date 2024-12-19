import 'year_end_count_kpi.dart';

class YearEndCountKpiPage extends StatefulWidget {

  const YearEndCountKpiPage({
    super.key,
  });

  @override
  State<YearEndCountKpiPage> createState() => _CreateState();
}

class _CreateState extends State<YearEndCountKpiPage> {

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
      route: '/year_end_count_kpi',
      title: 'System Review / Year End Count KPI',
      body: BaseText(text: 'year_end_count_kpi'),
    );
  }
}