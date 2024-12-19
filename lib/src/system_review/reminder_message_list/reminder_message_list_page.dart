import 'reminder_message_list.dart';

class ReminderMessageListPage extends StatefulWidget {

  const ReminderMessageListPage({
    super.key,
  });

  @override
  State<ReminderMessageListPage> createState() => _CreateState();
}

class _CreateState extends State<ReminderMessageListPage> {

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
      route: '/reminder_message_list',
      title: 'System Review / Reminder Message List',
      body: BaseText(text: 'reminder_message_list'),
    );
  }
}