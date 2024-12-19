import 'yard_managment.dart';

class YardManagmentPage extends StatefulWidget {

  const YardManagmentPage({
    super.key,
  });

  @override
  State<YardManagmentPage> createState() => _CreateState();
}

class _CreateState extends State<YardManagmentPage> {

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
      route: '/yard_managment',
      title: 'Receiving / Yard Managment',
      body: BaseText(text: 'yard_managment'),
    );
  }
}