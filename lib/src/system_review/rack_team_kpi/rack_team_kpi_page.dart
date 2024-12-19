import 'rack_team_kpi.dart';

class RackTeamKpiPage extends StatefulWidget {

  const RackTeamKpiPage({
    super.key,
  });

  @override
  State<RackTeamKpiPage> createState() => _CreateState();
}

class _CreateState extends State<RackTeamKpiPage> {

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
      route: '/rack_team_kpi',
      title: 'System Review / Rack Team KPI',
      body: BaseText(text: 'rack_team_kpi'),
    );
  }
}