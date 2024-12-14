import 'daily_mhe_check.dart';

class DailyMheCheckPage extends StatefulWidget {

  const DailyMheCheckPage({
    super.key,
  });

  @override
  State<DailyMheCheckPage> createState() => _CreateState();
}

class _CreateState extends State<DailyMheCheckPage> {

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
      route: '/daily_mhe_check',
      title: 'System Configuration / Daily MHE Check',
      body: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: Text(
          'DailyMheCheckPage',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}