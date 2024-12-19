import 'velocity_class_history.dart';

class VelocityClassHistoryPage extends StatefulWidget {

  const VelocityClassHistoryPage({
    super.key,
  });

  @override
  State<VelocityClassHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<VelocityClassHistoryPage> {

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
      route: '/velocity_class_history',
      title: 'System Review / Velocity Class History',
      body: BaseText(text: 'velocity_class_history'),
    );
  }
}