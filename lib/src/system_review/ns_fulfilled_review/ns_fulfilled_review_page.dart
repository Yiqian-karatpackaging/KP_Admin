import 'ns_fulfilled_review.dart';

class NsFulfilledReviewPage extends StatefulWidget {

  const NsFulfilledReviewPage({
    super.key,
  });

  @override
  State<NsFulfilledReviewPage> createState() => _CreateState();
}

class _CreateState extends State<NsFulfilledReviewPage> {

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
      route: '/ns_fulfilled_review',
      title: 'System Review / NS Fulfilled Review',
      body: BaseText(text: 'ns_fulfilled_review'),
    );
  }
}