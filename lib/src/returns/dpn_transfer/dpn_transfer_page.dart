import 'dpn_transfer.dart';

class DpnTransferPage extends StatefulWidget {

  const DpnTransferPage({
    super.key,
  });

  @override
  State<DpnTransferPage> createState() => _CreateState();
}

class _CreateState extends State<DpnTransferPage> {

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
      route: '/dpn_transfer',
      title: 'Returns / DPN Transfer',
      body: BaseText(text: 'dpn_transfer'),
    );
  }
}