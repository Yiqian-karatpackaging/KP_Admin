import 'dispatch_commit.dart';

class DispatchCommitPage extends StatefulWidget {

  const DispatchCommitPage({
    super.key,
  });

  @override
  State<DispatchCommitPage> createState() => _CreateState();
}

class _CreateState extends State<DispatchCommitPage> {

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
      route: '/dispatch_commit',
      title: 'Outbound / Dispatch Commit',
      body: BaseText(text: 'dispatch_commit'),
    );
  }
}