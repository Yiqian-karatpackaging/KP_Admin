import 'paper_forming.dart';

class PaperFormingPage extends StatefulWidget {

  const PaperFormingPage({
    super.key,
  });

  @override
  State<PaperFormingPage> createState() => _CreateState();
}

class _CreateState extends State<PaperFormingPage> {

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
      route: '/paper_forming',
      title: 'Manufacturing / Paper Forming',
      body: BaseText(text: 'paper_forming'),
    );
  }
}