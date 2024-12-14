import 'gls_zip_codes.dart';

class GLSZipCodesPage extends StatefulWidget {

  const GLSZipCodesPage({
    super.key,
  });

  @override
  State<GLSZipCodesPage> createState() => _CreateState();
}

class _CreateState extends State<GLSZipCodesPage> {

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
      route: '/gls_zip_codes',
      title: 'System Configuration / GLS Zip Codes',
      body: BaseText(text: 'gls_zip_codes'),
    );
  }
}