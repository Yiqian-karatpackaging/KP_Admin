import 'will_call_duty.dart';

class WillCallDutyPage extends StatefulWidget {

  const WillCallDutyPage({
    super.key,
  });

  @override
  State<WillCallDutyPage> createState() => _CreateState();
}

class _CreateState extends State<WillCallDutyPage> {

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
      route: '/will_call_duty',
      title: 'Will Call Schedule / Will Call Duty',
      body: BaseText(text: 'will_call_duty'),
    );
  }
}