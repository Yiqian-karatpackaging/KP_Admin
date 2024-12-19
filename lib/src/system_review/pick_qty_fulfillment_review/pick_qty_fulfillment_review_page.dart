import 'pick_qty_fulfillment_review.dart';

class PickQtyFulfillmentReviewPage extends StatefulWidget {

  const PickQtyFulfillmentReviewPage({
    super.key,
  });

  @override
  State<PickQtyFulfillmentReviewPage> createState() => _CreateState();
}

class _CreateState extends State<PickQtyFulfillmentReviewPage> {

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
      route: '/pick_qty_fulfillment_review',
      title: 'System Review / Pick QTY Fulfillment Review',
      body: BaseText(text: 'pick_qty_fulfillment_review'),
    );
  }
}