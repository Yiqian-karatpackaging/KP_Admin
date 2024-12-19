import 'rack_queue.dart';

class RackQueuePage extends StatefulWidget {

  const RackQueuePage({
    super.key,
  });

  @override
  State<RackQueuePage> createState() => _CreateState();
}

class _CreateState extends State<RackQueuePage> {

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
      route: '/rack_queue',
      title: 'Sales / Rack Queue',
      body: BaseText(text: 'rack_queue'),
    );
  }
}