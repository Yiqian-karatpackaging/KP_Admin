import 'package:kp_admin/src/shipping/cross_inventory_lookup/cross_inventory_lookup.dart';

class CrossInventoryLookupSoToWidget extends StatefulWidget {

  const CrossInventoryLookupSoToWidget({
    super.key,
  });

  @override
  State<CrossInventoryLookupSoToWidget> createState() => _CreateState();
}

class _CreateState extends State<CrossInventoryLookupSoToWidget> {

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
    return Column(
      children: [
        SizedBox(height: 20,),
        Row(
          children: [
            SearchTextFieldWidget(title: 'SO#/TO#Item', textWidth: 100,),
            SizedBox(width: 8,),
            SearchButtonWidget(title: 'Search', onTap: (){}),
          ],
        )
      ],
    );
  }
}