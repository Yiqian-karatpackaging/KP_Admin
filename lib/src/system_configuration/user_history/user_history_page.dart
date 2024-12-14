import 'user_history.dart';

class UserHistoryPage extends StatefulWidget {

  const UserHistoryPage({
    super.key,
  });

  @override
  State<UserHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<UserHistoryPage> {

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
      route: '/user_history',
      title: 'System Configuration / User History',
      body: BaseText(text: 'user_history'),
    );
  }
}