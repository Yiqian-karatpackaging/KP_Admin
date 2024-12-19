import 'dpn_movement.dart';

class DpnMovementPage extends StatefulWidget {

  const DpnMovementPage({
    super.key,
  });

  @override
  State<DpnMovementPage> createState() => _CreateState();
}

class _CreateState extends State<DpnMovementPage> {

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
      route: '/dpn_movement',
      title: 'Returns / DPN Movement',
      body: BaseText(text: 'dpn_movement'),
    );
  }
}