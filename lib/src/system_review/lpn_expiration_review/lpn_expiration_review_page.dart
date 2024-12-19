import 'lpn_expiration_review.dart';

class LpnExpirationReviewPage extends StatefulWidget {

  const LpnExpirationReviewPage({
    super.key,
  });

  @override
  State<LpnExpirationReviewPage> createState() => _CreateState();
}

class _CreateState extends State<LpnExpirationReviewPage> {

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
      route: '/lpn_expiration_review',
      title: 'System Review / LPN Expiration Review',
      body: BaseText(text: 'lpn_expiration_review'),
    );
  }
}