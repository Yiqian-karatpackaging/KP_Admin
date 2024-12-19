import 'paper_punching.dart';

class PaperPunchingPage extends StatefulWidget {

  const PaperPunchingPage({
    super.key,
  });

  @override
  State<PaperPunchingPage> createState() => _CreateState();
}

class _CreateState extends State<PaperPunchingPage> {

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
      route: '/paper_punching',
      title: 'Manufacturing / Paper Punching',
      body: BaseText(text: 'paper_punching'),
    );
  }
}