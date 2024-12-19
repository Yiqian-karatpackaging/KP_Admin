import 'incoming_containers.dart';

class IncomingContainersPage extends StatefulWidget {

  const IncomingContainersPage({
    super.key,
  });

  @override
  State<IncomingContainersPage> createState() => _CreateState();
}

class _CreateState extends State<IncomingContainersPage> {

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
      route: '/incoming_containers',
      title: 'Receiving / Incoming Containers',
      body: BaseText(text: 'incoming_containers'),
    );
  }
}