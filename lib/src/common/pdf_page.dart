import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import '../../common/widget/widget.dart';

class PDFPage extends StatefulWidget {

  final String pdfUrl;

  const PDFPage(this.pdfUrl, {
    super.key,
  });

  @override
  State<PDFPage> createState() => _CreateState();
}

class _CreateState extends State<PDFPage> {
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
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      appBar: const BaseAppBar(
        titleText: 'PDF',
      ),
      body: const PDF(
        swipeHorizontal: true,
      ).cachedFromUrl(widget.pdfUrl),
    );
  }
}
