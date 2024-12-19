import 'work_order_queue.dart';

class WorkOrderQueuePage extends StatefulWidget {

  const WorkOrderQueuePage({
    super.key,
  });

  @override
  State<WorkOrderQueuePage> createState() => _CreateState();
}

class _CreateState extends State<WorkOrderQueuePage> {

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
      route: '/work_order_queue',
      title: 'Manufacturing / Work Order Queue',
      body: BaseText(text: 'work_order_queue'),
    );
  }
}