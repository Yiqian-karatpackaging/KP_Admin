import 'so_support_doc.dart';

class SOSupportDocPage extends StatefulWidget {

  const SOSupportDocPage({
    super.key,
  });

  @override
  State<SOSupportDocPage> createState() => _CreateState();
}

class _CreateState extends State<SOSupportDocPage> {

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
      route: '/so_support_doc',
      title: 'Support Docs / SO Support Doc',
      body: BaseText(text: 'so_support_doc'),
    );
  }
}