import 'completed_containers.dart';

class CompletedContainersPage extends StatefulWidget {

  const CompletedContainersPage({
    super.key,
  });

  @override
  State<CompletedContainersPage> createState() => _CreateState();
}

class _CreateState extends State<CompletedContainersPage> {

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
      route: '/completed_containers',
      title: 'Receiving / Completed Containers',
      body: BaseText(text: 'completed_containers'),
    );
  }
}