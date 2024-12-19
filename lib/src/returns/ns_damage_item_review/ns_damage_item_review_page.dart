import 'ns_damage_item_review.dart';

class NsDamageItemReviewPage extends StatefulWidget {

  const NsDamageItemReviewPage({
    super.key,
  });

  @override
  State<NsDamageItemReviewPage> createState() => _CreateState();
}

class _CreateState extends State<NsDamageItemReviewPage> {

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
      route: '/ns_damage_item_review',
      title: 'Returns / NS Damage Item Review',
      body: BaseText(text: 'ns_damage_item_review'),
    );
  }
}