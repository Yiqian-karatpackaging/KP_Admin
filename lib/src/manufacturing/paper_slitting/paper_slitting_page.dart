import 'paper_slitting.dart';

class PaperSlittingPage extends StatefulWidget {

  const PaperSlittingPage({
    super.key,
  });

  @override
  State<PaperSlittingPage> createState() => _CreateState();
}

class _CreateState extends State<PaperSlittingPage> {

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
      route: '/paper_slitting',
      title: 'Manufacturing / Paper Slitting',
      body: BaseText(text: 'paper_slitting'),
    );
  }
}