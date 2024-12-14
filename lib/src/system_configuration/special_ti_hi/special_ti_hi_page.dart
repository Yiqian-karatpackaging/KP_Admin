import 'special_ti_hi.dart';

class SpecialTiHiPage extends StatefulWidget {

  const SpecialTiHiPage({
    super.key,
  });

  @override
  State<SpecialTiHiPage> createState() => _CreateState();
}

class _CreateState extends State<SpecialTiHiPage> {

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
      route: '/special_ti_hi',
      title: 'System Configuration / Special Ti/Hi',
      body: BaseText(text: 'special_ti_hi'),
    );
  }
}