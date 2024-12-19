import 'internal_usage_request.dart';

class InternalUsageRequestPage extends StatefulWidget {

  const InternalUsageRequestPage({
    super.key,
  });

  @override
  State<InternalUsageRequestPage> createState() => _CreateState();
}

class _CreateState extends State<InternalUsageRequestPage> {

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
      route: '/internal_usage_request',
      title: 'Purchasing / Internal Usage Request',
      body: BaseText(text: 'internal_usage_request'),
    );
  }
}