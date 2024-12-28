import 'place_holder_pallet.dart';

class PlaceHolderPalletPage extends StatefulWidget {

  const PlaceHolderPalletPage({
    super.key,
  });

  @override
  State<PlaceHolderPalletPage> createState() => _CreateState();
}

class _CreateState extends State<PlaceHolderPalletPage> {

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
      route: '/place_holder_pallet',
      title: 'Receiving / Place Holder Pallet',
      body: Padding(padding: EdgeInsets.only(top: 10), child: Row(
        children: [
          SearchTextFieldWidget(title: 'PO#:', titleWidth: 20, textWidth: 50,),
          SearchTextFieldWidget(title: 'Bin:', titleWidth: 20, textWidth: 50,),
          SizedBox(width: 10),
          BaseText(text: 'Create Place Holder', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,),
        ],
      ),),
    );
  }
}