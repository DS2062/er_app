import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PdfViewerScreen extends StatefulWidget {
  final String pdfPath;
  final String pdfName;

  const PdfViewerScreen({required this.pdfPath, required this.pdfName});

  @override
  State<PdfViewerScreen> createState() => _PdfViewerScreenState();
}

class _PdfViewerScreenState extends State<PdfViewerScreen> {
  int totalPages = 0;
  int currentPage = 0;
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pdfName, style: TextStyle(fontSize: 25)),
      ),
      body: PDFView(
        filePath: widget.pdfPath,
        pageFling: false,
        autoSpacing: false,
        onRender: (pages) {
          setState(() {
            totalPages = pages!;
          });
        },
        onPageChanged: (page, total) {
          setState(() {
            currentPage = page!;
          });
        },
      ),
    );
  }
}
