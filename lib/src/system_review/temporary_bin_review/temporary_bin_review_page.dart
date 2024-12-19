import 'temporary_bin_review.dart';

class TemporaryBinReviewPage extends StatefulWidget {

  const TemporaryBinReviewPage({
    super.key,
  });

  @override
  State<TemporaryBinReviewPage> createState() => _CreateState();
}

class _CreateState extends State<TemporaryBinReviewPage> {

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
      route: '/temporary_bin_review',
      title: 'System Review / Temporary Bin Review',
      body: BaseText(text: 'temporary_bin_review'),
    );
  }
}