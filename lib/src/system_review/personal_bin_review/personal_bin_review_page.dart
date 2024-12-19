import 'personal_bin_review.dart';

class PersonalBinReviewPage extends StatefulWidget {

  const PersonalBinReviewPage({
    super.key,
  });

  @override
  State<PersonalBinReviewPage> createState() => _CreateState();
}

class _CreateState extends State<PersonalBinReviewPage> {

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
      route: '/personal_bin_review',
      title: 'System Review / Personal Bin Review',
      body: BaseText(text: 'personal_bin_review'),
    );
  }
}