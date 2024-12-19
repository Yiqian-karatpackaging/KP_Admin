import 'workload_statistics.dart';

class WorkloadStatisticsPage extends StatefulWidget {

  const WorkloadStatisticsPage({
    super.key,
  });

  @override
  State<WorkloadStatisticsPage> createState() => _CreateState();
}

class _CreateState extends State<WorkloadStatisticsPage> {

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
      route: '/workload_statistics',
      title: 'System Review / Workload Statistics',
      body: BaseText(text: 'workload_statistics'),
    );
  }
}