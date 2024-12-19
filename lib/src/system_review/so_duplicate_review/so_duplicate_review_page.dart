import 'so_duplicate_review.dart';

class SoDuplicateReviewPage extends StatefulWidget {

  const SoDuplicateReviewPage({
    super.key,
  });

  @override
  State<SoDuplicateReviewPage> createState() => _CreateState();
}

class _CreateState extends State<SoDuplicateReviewPage> {

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
      route: '/so_duplicate_review',
      title: 'System Review / SO Duplicate Review',
      body: BaseText(text: 'so_duplicate_review'),
    );
  }
}