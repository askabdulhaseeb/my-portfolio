import 'package:flutter/material.dart';
import 'configs/app_colors.dart';
import 'configs/app_font.dart';
import 'pages/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Protfolio',
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
        brightness: Brightness.dark,
        fontFamily: fPoppinsFont,
        scaffoldBackgroundColor: cDarkScaffoldColor,
        primaryColor: cAccentColor,
        primarySwatch: Colors.blue,
      ),
      themeMode: ThemeMode.dark,
      home: MainScreen(),
    );
  }
}
