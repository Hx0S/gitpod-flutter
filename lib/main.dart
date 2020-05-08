import 'package:flutter/material.dart';

import 'SearchListViewExample.dart';
// import 'ViewPdf.dart';

// void main() {
//   runApp(
//   );
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'ENTdbCenter',
    home: Scaffold(
      appBar: AppBar(
        title: Text('ENTdbCenter'),
      ),
      body: SearchListViewExample(),

    ),
  );
  }
}


// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'ENTdbCenter',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("ЕНТdbСenter"),
//         ),
//         body: SearchListViewExample(),
//       ),
//     );
//   }
// }
