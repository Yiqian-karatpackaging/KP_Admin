import 'recount.dart';

class RecountPage extends StatefulWidget {

  const RecountPage({
    super.key,
  });

  @override
  State<RecountPage> createState() => _CreateState();
}

class _CreateState extends State<RecountPage> {

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
      route: '/recount',
      title: 'Inventory / Recount',
      body: BaseText(text: 'recount'),
    );
  }
}