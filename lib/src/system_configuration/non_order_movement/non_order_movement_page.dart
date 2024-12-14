import 'non_order_movement.dart';

class NonOrderMovementPage extends StatefulWidget {

  const NonOrderMovementPage({
    super.key,
  });

  @override
  State<NonOrderMovementPage> createState() => _CreateState();
}

class _CreateState extends State<NonOrderMovementPage> {

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
      route: '/non_order_movement',
      title: 'System Configuration / Non Order Movement',
      body: BaseText(text: 'non_order_movement'),
    );
  }
}