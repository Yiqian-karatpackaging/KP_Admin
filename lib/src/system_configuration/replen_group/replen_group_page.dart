import 'replen_group.dart';

class ReplenGroupPage extends StatefulWidget {

  const ReplenGroupPage({
    super.key,
  });

  @override
  State<ReplenGroupPage> createState() => _CreateState();
}

class _CreateState extends State<ReplenGroupPage> {

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
      route: '/replen_group',
      title: 'System Configuration / Replen Group',
      body: BaseText(text: 'replen_group'),
    );
  }
}