import 'qc_hold_review.dart';

class QCHoldReviewPage extends StatefulWidget {

  const QCHoldReviewPage({
    super.key,
  });

  @override
  State<QCHoldReviewPage> createState() => _CreateState();
}

class _CreateState extends State<QCHoldReviewPage> {

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
      route: '/qc_hold_review',
      title: 'Manufacturing / QC Hold Review',
      body: BaseText(text: 'qc_hold_review'),
    );
  }
}