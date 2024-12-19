import 'repacked_item.dart';

class RepackedItemPage extends StatefulWidget {

  const RepackedItemPage({
    super.key,
  });

  @override
  State<RepackedItemPage> createState() => _CreateState();
}

class _CreateState extends State<RepackedItemPage> {

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
      route: '/repacked_item',
      title: 'Returns / Repacked Item',
      body: BaseText(text: 'repacked_item'),
    );
  }
}