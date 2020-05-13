import 'package:flutter/material.dart';
import 'package:gitpodflutter/search_list.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'GainENT',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        brightness: Brightness.light,
        primarySwatch:Colors.yellow,
        primaryColor: Color(0xFFFFBB54),
        accentColor: Color(0xFFECEFF1),
      ),
      home: new SearchList(),
    );
  }
}
// import 'package:flutter/material.dart';

// import 'SearchListViewExample.dart';
// // import 'ViewPdf.dart';

// // void main() {
// //   runApp(
// //   );
// // }
// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//     title: 'ENTdbCenter',
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('ENTdbCenter'),
//       ),
//       body: SearchListViewExample(),

//     ),
//   );
//   }
// }


// // class MyApp extends StatelessWidget {
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'ENTdbCenter',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       debugShowCheckedModeBanner: false,
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text("ЕНТdbСenter"),
// //         ),
// //         body: SearchListViewExample(),
// //       ),
// //     );
// //   }
// // }
