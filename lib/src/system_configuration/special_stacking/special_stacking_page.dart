import 'special_stacking.dart';

class SpecialStackingPage extends StatefulWidget {

  const SpecialStackingPage({
    super.key,
  });

  @override
  State<SpecialStackingPage> createState() => _CreateState();
}

class _CreateState extends State<SpecialStackingPage> {

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
      route: '/special_stacking',
      title: 'System Configuration / Special Stacking',
      body: BaseText(text: 'special_stacking'),
    );
  }
}