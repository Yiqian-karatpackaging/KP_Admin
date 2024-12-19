import 'do_dispatch.dart';

class DoDispatchPage extends StatefulWidget {

  const DoDispatchPage({
    super.key,
  });

  @override
  State<DoDispatchPage> createState() => _CreateState();
}

class _CreateState extends State<DoDispatchPage> {

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
      route: '/do_dispatch',
      title: 'Outbound / DO Dispatch',
      body: BaseText(text: 'do_dispatch'),
    );
  }
}