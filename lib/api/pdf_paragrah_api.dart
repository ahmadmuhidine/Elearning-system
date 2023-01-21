import 'dart:io';
import 'package:elearning/api/pdf_api.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

class PdfParagraphApi {
  static Future<File> generate() async {
    final pdf = Document();

    pdf.addPage(MultiPage(
      build: (context) => [
        buildLink(),
        ...buildBulletPoints(),
        Header(child: Text('My Headline')),
        Paragraph(text: LoremText().paragraph(100)),
        Paragraph(text: LoremText().paragraph(60)),
        Paragraph(text: LoremText().paragraph(100)),
        Paragraph(text: LoremText().paragraph(60)),
        Paragraph(text: LoremText().paragraph(100)),
        Paragraph(text: LoremText().paragraph(60)),
        Paragraph(text: LoremText().paragraph(100)),
        Paragraph(text: LoremText().paragraph(60)),
        Paragraph(text: LoremText().paragraph(60)),
      ],
      footer: (context) {
        final text = 'Page ${context.pageNumber} of ${context.pagesCount}';

        return Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(top: 1 * PdfPageFormat.cm),
            child: Text(
              text,
              style: TextStyle(color: PdfColors.black),
            ));
      },
    ));

    return PdfApi.saveDocument(name: 'my_document.pdf', pdf: pdf);
  }

  static Widget buildLink() => UrlLink(
        destination: 'https://en.iua.edu.sd',
        child: Text('Go to International University of Africa',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: PdfColors.blue,
            )),
      );

  static List<Widget> buildBulletPoints() => [
        Bullet(text: 'First Bullet'),
        Bullet(text: 'Second Bullet'),
        Bullet(text: 'Third Bullet'),
      ];
}
