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
      body: BaseText(text: 'place_holder_pallet'),
    );
  }
}