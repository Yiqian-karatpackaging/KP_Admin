import 'group_manage.dart';

class GroupManagePage extends StatefulWidget {

  const GroupManagePage({
    super.key,
  });

  @override
  State<GroupManagePage> createState() => _CreateState();
}

class _CreateState extends State<GroupManagePage> {

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
      route: '/group_manage',
      title: 'System Configuration / Group Manage',
      body: BaseText(text: 'group_manage'),
    );
  }
}