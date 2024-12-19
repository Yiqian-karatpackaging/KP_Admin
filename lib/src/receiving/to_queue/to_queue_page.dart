import 'to_queue.dart';

class TOQueuePage extends StatefulWidget {

  const TOQueuePage({
    super.key,
  });

  @override
  State<TOQueuePage> createState() => _CreateState();
}

class _CreateState extends State<TOQueuePage> {

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
      route: '/to_queue',
      title: 'Receiving / TO Queue',
      body: BaseText(text: 'to_queue'),
    );
  }
}