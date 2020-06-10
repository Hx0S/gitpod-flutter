// import 'package:flutter/material.dart';
// import 'homescreen.dart';

// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Flutter Database',
//       debugShowCheckedModeBanner: false,
//       theme: new ThemeData(
//         primaryColor:  const Color(0xFF02BB9F),
//         primaryColorDark: const Color(0xFF167F67),
//         accentColor: const Color(0xFFFFAD32),
//       ),
//       home: new MyHomePage(title: 'Flutter Database'),
//     );
//   }

// }
// import 'package:flutter/material.dart';

// import 'main_screen.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Product List',
//       home: MainScreen(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:gitpodflutter/search_list.dart';

import 'db_helper.dart';

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
