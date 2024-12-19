import 'manifest_history_v2.dart';

class ManifestHistoryV2Page extends StatefulWidget {

  const ManifestHistoryV2Page({
    super.key,
  });

  @override
  State<ManifestHistoryV2Page> createState() => _CreateState();
}

class _CreateState extends State<ManifestHistoryV2Page> {

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
      route: '/manifest_history_v2',
      title: 'Outbound / Manifest History V2',
      body: BaseText(text: 'manifest_history_v2'),
    );
  }
}