import 'package:ai_barcode_scanner/ai_barcode_scanner.dart';
import 'package:flutter/material.dart';
import 'package:kp_admin/common/widget/widget.dart';

class ScanPage extends StatefulWidget {

  const ScanPage({
    super.key,
  });

  @override
  State<ScanPage> createState() => _CreateState();
}

class _CreateState extends State<ScanPage> {
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
    return AiBarcodeScanner(
      onDispose: () {
        debugPrint("Barcode scanner disposed!");
      },
      hideGalleryButton: false,
      bottomSheetBuilder: (cxt, controller) => const SizedBox(),
      controller: MobileScannerController(
        detectionSpeed: DetectionSpeed.noDuplicates,
      ),
      onDetect: (BarcodeCapture capture) {
        /// The row string scanned barcode value
        final String? scannedValue = capture.barcodes.first.rawValue;
        debugPrint("Barcode scanned: $scannedValue");
        // Navigator.pop(context);
      },
      // validator: (value) {
      //   if (value.barcodes.isEmpty) {
      //     return false;
      //   }
      //   if (!(value.barcodes.first.rawValue
      //       ?.contains('flutter.dev') ??
      //       false)) {
      //     return false;
      //   }
      //   return true;
      // },
    );
  }
}
