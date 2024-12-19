import 'unknown_returns.dart';

class UnknownReturnsPage extends StatefulWidget {

  const UnknownReturnsPage({
    super.key,
  });

  @override
  State<UnknownReturnsPage> createState() => _CreateState();
}

class _CreateState extends State<UnknownReturnsPage> {

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
      route: '/unknown_returns',
      title: 'Returns / Unknown Returns',
      body: BaseText(text: 'unknown_returns'),
    );
  }
}