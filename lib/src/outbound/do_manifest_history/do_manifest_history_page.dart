import 'do_manifest_history.dart';

class DoManifestHistoryPage extends StatefulWidget {

  const DoManifestHistoryPage({
    super.key,
  });

  @override
  State<DoManifestHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<DoManifestHistoryPage> {

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
      route: '/do_manifest_history',
      title: 'Outbound / DO Manifest History',
      body: BaseText(text: 'do_manifest_history'),
    );
  }
}