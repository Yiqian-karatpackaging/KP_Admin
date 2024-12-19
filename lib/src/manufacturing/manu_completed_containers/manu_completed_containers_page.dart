import 'manu_completed_containers.dart';

class ManuCompletedContainersPage extends StatefulWidget {

  const ManuCompletedContainersPage({
    super.key,
  });

  @override
  State<ManuCompletedContainersPage> createState() => _CreateState();
}

class _CreateState extends State<ManuCompletedContainersPage> {

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
      route: '/manu_completed_containers',
      title: 'Manufacturing / Manu Completed Containers',
      body: BaseText(text: 'manu_completed_containers'),
    );
  }
}