import 'receive_pallet_movement.dart';

class ReceivePalletMovementPage extends StatefulWidget {

  const ReceivePalletMovementPage({
    super.key,
  });

  @override
  State<ReceivePalletMovementPage> createState() => _CreateState();
}

class _CreateState extends State<ReceivePalletMovementPage> {

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
      route: '/receive_pallet_movement',
      title: 'Receiving / Pallet Movement',
      body: BaseText(text: 'receive_pallet_movement'),
    );
  }
}