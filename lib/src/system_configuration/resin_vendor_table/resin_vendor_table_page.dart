import 'resin_vendor_table.dart';

class ResinVendorTablePage extends StatefulWidget {

  const ResinVendorTablePage({
    super.key,
  });

  @override
  State<ResinVendorTablePage> createState() => _CreateState();
}

class _CreateState extends State<ResinVendorTablePage> {

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
      route: '/resin_vendor_table',
      title: 'System Configuration / Resin Vendor Table',
      body: BaseText(text: 'resin_vendor_table'),
    );
  }
}