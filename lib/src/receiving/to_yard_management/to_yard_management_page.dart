import 'to_yard_management.dart';

class ToYardManagementPage extends StatefulWidget {

  const ToYardManagementPage({
    super.key,
  });

  @override
  State<ToYardManagementPage> createState() => _CreateState();
}

class _CreateState extends State<ToYardManagementPage> {

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
      route: '/to_yard_management',
      title: 'Receiving / TO Yard Management',
      body: BaseText(text: 'to_yard_management'),
    );
  }
}