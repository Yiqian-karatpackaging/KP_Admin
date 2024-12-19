import 'manu_yard_management.dart';

class ManuYardManagementPage extends StatefulWidget {

  const ManuYardManagementPage({
    super.key,
  });

  @override
  State<ManuYardManagementPage> createState() => _CreateState();
}

class _CreateState extends State<ManuYardManagementPage> {

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
      route: '/manu_yard_management',
      title: 'Manufacturing / Manu Yard Management',
      body: BaseText(text: 'manu_yard_management'),
    );
  }
}