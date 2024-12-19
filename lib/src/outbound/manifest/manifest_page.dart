import 'manifest.dart';

class ManifestPage extends StatefulWidget {

  const ManifestPage({
    super.key,
  });

  @override
  State<ManifestPage> createState() => _CreateState();
}

class _CreateState extends State<ManifestPage> {

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
      route: '/manifest',
      title: 'Outbound / Manifest',
      body: BaseText(text: 'manifest'),
    );
  }
}