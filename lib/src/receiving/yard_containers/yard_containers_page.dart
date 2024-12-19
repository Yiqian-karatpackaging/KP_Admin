import 'yard_containers.dart';

class YardContainersPage extends StatefulWidget {

  const YardContainersPage({
    super.key,
  });

  @override
  State<YardContainersPage> createState() => _CreateState();
}

class _CreateState extends State<YardContainersPage> {

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
      route: '/yard_containers',
      title: 'Receiving / Yard Containers',
      body: BaseText(text: 'yard_containers'),
    );
  }
}