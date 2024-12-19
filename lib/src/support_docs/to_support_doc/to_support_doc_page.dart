import 'to_support_doc.dart';

class ToSupportDocPage extends StatefulWidget {

  const ToSupportDocPage({
    super.key,
  });

  @override
  State<ToSupportDocPage> createState() => _CreateState();
}

class _CreateState extends State<ToSupportDocPage> {

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
      route: '/to_support_doc',
      title: 'Support Docs / TO Support Do',
      body: BaseText(text: 'to_support_doc'),
    );
  }
}