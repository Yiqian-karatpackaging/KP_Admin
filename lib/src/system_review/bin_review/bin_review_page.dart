import 'bin_review.dart';

class BinReviewPage extends StatefulWidget {

  const BinReviewPage({
    super.key,
  });

  @override
  State<BinReviewPage> createState() => _CreateState();
}

class _CreateState extends State<BinReviewPage> {

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
      route: '/bin_review',
      title: 'System Review / Bin Review',
      body: BaseText(text: 'bin_review'),
    );
  }
}