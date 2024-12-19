import 'return_authorizations.dart';

class ReturnAuthorizationsPage extends StatefulWidget {

  const ReturnAuthorizationsPage({
    super.key,
  });

  @override
  State<ReturnAuthorizationsPage> createState() => _CreateState();
}

class _CreateState extends State<ReturnAuthorizationsPage> {

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
      route: '/return_authorizations',
      title: 'Returns / Return Authorizations',
      body: BaseText(text: 'return_authorizations'),
    );
  }
}