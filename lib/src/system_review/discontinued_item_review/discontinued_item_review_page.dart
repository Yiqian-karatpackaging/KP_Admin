import 'discontinued_item_review.dart';

class DiscontinuedItemReviewPage extends StatefulWidget {

  const DiscontinuedItemReviewPage({
    super.key,
  });

  @override
  State<DiscontinuedItemReviewPage> createState() => _CreateState();
}

class _CreateState extends State<DiscontinuedItemReviewPage> {

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
      route: '/discontinued_item_review',
      title: 'System Review / Discontinued Item Review',
      body: BaseText(text: 'discontinued_item_review'),
    );
  }
}