import 'id_bin_review.dart';

class IdBinReviewPage extends StatefulWidget {

  const IdBinReviewPage({
    super.key,
  });

  @override
  State<IdBinReviewPage> createState() => _CreateState();
}

class _CreateState extends State<IdBinReviewPage> {

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
      route: '/id_bin_review',
      title: 'System Review / ID Bin Review',
      body: BaseText(text: 'id_bin_review'),
    );
  }
}