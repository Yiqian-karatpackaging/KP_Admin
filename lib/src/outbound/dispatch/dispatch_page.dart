import 'dispatch.dart';

class DispatchPage extends StatefulWidget {

  const DispatchPage({
    super.key,
  });

  @override
  State<DispatchPage> createState() => _CreateState();
}

class _CreateState extends State<DispatchPage> {

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
      route: '/dispatch',
      title: 'Outbound / Dispatch',
      body: BaseText(text: 'dispatch'),
    );
  }
}