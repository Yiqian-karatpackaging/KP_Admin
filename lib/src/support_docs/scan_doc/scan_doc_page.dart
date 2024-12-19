import 'scan_doc.dart';

class ScanDocPage extends StatefulWidget {

  const ScanDocPage({
    super.key,
  });

  @override
  State<ScanDocPage> createState() => _CreateState();
}

class _CreateState extends State<ScanDocPage> {

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
      route: '/scan_doc',
      title: 'Support Docs / Scan Doc',
      body: BaseText(text: 'scan_doc'),
    );
  }
}