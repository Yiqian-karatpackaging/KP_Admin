import 'bpn_movement.dart';

class BPNMovementPage extends StatefulWidget {

  const BPNMovementPage({
    super.key,
  });

  @override
  State<BPNMovementPage> createState() => _CreateState();
}

class _CreateState extends State<BPNMovementPage> {

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
      route: '/bpn_movement',
      title: 'Inventory / BPN Movement',
      body: BaseText(text: 'bpn_movement'),
    );
  }
}