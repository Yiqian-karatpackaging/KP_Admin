import 'user_pick_history.dart';

class UserPickHistoryPage extends StatefulWidget {

  const UserPickHistoryPage({
    super.key,
  });

  @override
  State<UserPickHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<UserPickHistoryPage> {

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
      route: '/user_pick_history',
      title: 'System Review / User Pick History',
      body: BaseText(text: 'user_pick_history'),
    );
  }
}