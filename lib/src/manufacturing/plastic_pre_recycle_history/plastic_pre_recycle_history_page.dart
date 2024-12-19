import 'plastic_pre_recycle_history.dart';

class PlasticPreRecycleHistoryPage extends StatefulWidget {

  const PlasticPreRecycleHistoryPage({
    super.key,
  });

  @override
  State<PlasticPreRecycleHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<PlasticPreRecycleHistoryPage> {

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
      route: '/plastic_pre_recycle_history',
      title: 'Manufacturing / Plastic Pre-Recycle History',
      body: BaseText(text: 'plastic_pre_recycle_history'),
    );
  }
}