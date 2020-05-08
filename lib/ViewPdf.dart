import 'package:flutter/material.dart';


import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';


class Viewpdf extends StatefulWidget {


  @override


  _ViewpdfState createState() => _ViewpdfState();


}


class _ViewpdfState extends State<Viewpdf> {


  PDFDocument document;


  @override


  void initState() {


    super.initState();


    loadfile();


  }


   loadfile() async {


    document = await PDFDocument.fromURL(

"http://www.africau.edu/images/default/sample.pdf"

);


    setState(() {


      document=document;


    });


  }


  @override


  Widget build(BuildContext context) {


    return Scaffold(


        appBar: AppBar(


          title: Text('Example'),


        ),


        body: Center(


         child: PDFViewer(document: document)),


    );


  }


}



