import 'package:flutter/material.dart';
import 'package:venados/splash.dart';
import 'package:venados/utils/colors.dart';

final ThemeData _bdTheme = _buildTheme();

ThemeData _buildTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: yellowdemon,
    primaryColor: greenpaste,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: greendemon,
      textTheme: ButtonTextTheme.normal,
    ),
    scaffoldBackgroundColor: Colors.white,
    cardColor: Colors.white,
    errorColor: Colors.red,
    focusColor: greendemon,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Venados Test',
      debugShowCheckedModeBanner: false,
      theme: _bdTheme,
      home: SplashScreen(),
    );
  }
}
