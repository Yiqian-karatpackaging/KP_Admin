import 'manifest_history.dart';

class ManifestHistoryPage extends StatefulWidget {

  const ManifestHistoryPage({
    super.key,
  });

  @override
  State<ManifestHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<ManifestHistoryPage> {

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
      route: '/manifest_history',
      title: 'Outbound / Manifest History',
      body: BaseText(text: 'manifest_history'),
    );
  }
}