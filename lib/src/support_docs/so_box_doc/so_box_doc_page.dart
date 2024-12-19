import 'so_box_doc.dart';

class SOBoxDocPage extends StatefulWidget {

  const SOBoxDocPage({
    super.key,
  });

  @override
  State<SOBoxDocPage> createState() => _CreateState();
}

class _CreateState extends State<SOBoxDocPage> {

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
      route: '/so_box_doc',
      title: 'Support Docs / SO Box Doc',
      body: BaseText(text: 'so_box_doc'),
    );
  }
}