import 'package:flutter/material.dart';
import 'package:restapi/provider/countProvider.dart';
import 'package:restapi/provider/darkProvider.dart';
import 'package:restapi/provider/favoriteProvider.dart';
import 'package:restapi/provider/sliderProvider.dart';

import 'package:restapi/screen/CountScreen.dart';
import 'package:provider/provider.dart';
import 'package:restapi/screen/darkScreen.dart';
import 'package:restapi/screen/favScreen.dart';
import 'package:restapi/screen/sliderScreen.dart';
import 'package:restapi/screen/withoutProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => countProvider()),
      ChangeNotifierProvider(create: (context) => sliderProvider()),
      ChangeNotifierProvider(create: (context) => favoriteProvider()),
      ChangeNotifierProvider(create: (context) => themeProvider()),
    ], child: MaterialApp(home: MyPageWithoutProvider()));
  }
}
//  Builder(
      //   builder: ((BuildContext context) {
      //     final _themeMode = Provider.of<themeProvider>(context);
      //     return MaterialApp(
      //       home: MyPageWithoutProvider(),
      //       themeMode: _themeMode.themeMode,
      //       theme: ThemeData(brightness: Brightness.light),
      //       darkTheme: ThemeData(
      //           brightness: Brightness.dark,
      //           appBarTheme: AppBarTheme(backgroundColor: Colors.purple),
      //           iconTheme: IconThemeData(color: Colors.red),
      //           radioTheme: RadioThemeData(
      //               fillColor: MaterialStateProperty.all(Colors.red))),
      //     );
      //   }),
      // ),