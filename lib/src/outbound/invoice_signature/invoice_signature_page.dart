import 'package:signature/signature.dart';

import 'invoice_signature.dart';

class InvoiceSignaturePage extends StatefulWidget {

  const InvoiceSignaturePage({
    super.key,
  });

  @override
  State<InvoiceSignaturePage> createState() => _CreateState();
}

class _CreateState extends State<InvoiceSignaturePage> {

  final SignatureController _controller = SignatureController(
    penStrokeWidth: 1,
    penColor: Colors.red,
    exportBackgroundColor: Colors.transparent,
    exportPenColor: Colors.black,
    onDrawStart: () => print('onDrawStart called!'),
    onDrawEnd: () => print('onDrawEnd called!'),
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller
      ..addListener(() => print('Value changed'))
      ..onDrawEnd = () => setState(
            () {
          // setState for build to update value of "empty label" in gui
        },
      );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  Future<void> _exportImage(BuildContext context) async {
    if (_controller.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          key: Key('snackbarPNG'),
          content: Text('No content'),
        ),
      );
      return;
    }

    final Uint8List? data =
    await _controller.toPngBytes(height: 1000, width: 1000);
    if (data == null) {
      return;
    }

    if (!mounted) return;

  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      route: '/invoice_signature',
      title: 'Outbound / Invoice Signature',
      body: Column(
        children: [
          Row(
            children: [
              SearchTextFieldWidget(title: 'SO#', titleWidth: 20, textWidth: 50,),
              SizedBox(width: 5),
              BaseText(text: 'Validate', bgColor: Colors.blue, textColor: Colors.white, padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2,),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Signature(
              key: const Key('signature'),
              controller: _controller,
              height: 300,
              backgroundColor: Colors.grey[300]!,
            ),
          ),
          Row(
            children: [
              BaseText(text: 'Save', bgColor: Colors.blue, textColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2, onTap: () => _exportImage(context),),
              const SizedBox(width: 5),
              BaseText(text: 'Clear', bgColor: Colors.blue, textColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10), borderRadius: 2, onTap: (){
                setState(() => _controller.clear());
              },),
            ],
          ),
        ],
      ),
    );
  }
}