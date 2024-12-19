import 'place_holder_list.dart';

class PlaceHolderListPage extends StatefulWidget {

  const PlaceHolderListPage({
    super.key,
  });

  @override
  State<PlaceHolderListPage> createState() => _CreateState();
}

class _CreateState extends State<PlaceHolderListPage> {

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
      route: '/place_holder_list',
      title: 'Receiving / Place Holder List',
      body: BaseText(text: 'place_holder_list'),
    );
  }
}