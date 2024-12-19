import 'to_received.dart';

class TOReceivedPage extends StatefulWidget {

  const TOReceivedPage({
    super.key,
  });

  @override
  State<TOReceivedPage> createState() => _CreateState();
}

class _CreateState extends State<TOReceivedPage> {

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
      route: '/to_received',
      title: 'Purchasing / TO Received',
      body: BaseText(text: 'to_received'),
    );
  }
}