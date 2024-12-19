import 'to_containers.dart';

class TOContainersPage extends StatefulWidget {

  const TOContainersPage({
    super.key,
  });

  @override
  State<TOContainersPage> createState() => _CreateState();
}

class _CreateState extends State<TOContainersPage> {

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
      route: '/to_containers',
      title: 'Receiving / TO Containers',
      body: BaseText(text: 'to_containers'),
    );
  }
}