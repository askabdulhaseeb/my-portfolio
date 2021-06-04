import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'configs/app_colors.dart';
import 'configs/app_font.dart';
import 'pages/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
