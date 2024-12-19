import 'plastic_recycle_history.dart';

class PlasticRecycleHistoryPage extends StatefulWidget {

  const PlasticRecycleHistoryPage({
    super.key,
  });

  @override
  State<PlasticRecycleHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<PlasticRecycleHistoryPage> {

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
      route: '/plastic_recycle_history',
      title: 'Manufacturing / Plastic Recycle History',
      body: BaseText(text: 'plastic_recycle_history'),
    );
  }
}