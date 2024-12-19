import 'to_completed_containers.dart';

class ToCompletedContainersPage extends StatefulWidget {

  const ToCompletedContainersPage({
    super.key,
  });

  @override
  State<ToCompletedContainersPage> createState() => _CreateState();
}

class _CreateState extends State<ToCompletedContainersPage> {

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
      route: '/to_completed_containers',
      title: 'Receiving / TO Completed Containers',
      body: BaseText(text: 'to_completed_containers'),
    );
  }
}