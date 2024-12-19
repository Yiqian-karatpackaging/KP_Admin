import 'deleted_history.dart';

class DeletedHistoryPage extends StatefulWidget {

  const DeletedHistoryPage({
    super.key,
  });

  @override
  State<DeletedHistoryPage> createState() => _CreateState();
}

class _CreateState extends State<DeletedHistoryPage> {

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
      route: '/deleted_history',
      title: 'Support Docs / Deleted History',
      body: BaseText(text: 'deleted_history'),
    );
  }
}