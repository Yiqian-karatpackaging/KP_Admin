import 'slow_item_review.dart';

class SlowItemReviewPage extends StatefulWidget {

  const SlowItemReviewPage({
    super.key,
  });

  @override
  State<SlowItemReviewPage> createState() => _CreateState();
}

class _CreateState extends State<SlowItemReviewPage> {

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
      route: '/slow_item_review',
      title: 'System Review / Slow Item Review',
      body: BaseText(text: 'slow_item_review'),
    );
  }
}