import 'package:flutter/material.dart';
import 'package:portfolio/pages/about/about.dart';
import 'package:portfolio/pages/contact/contact.dart';
import 'package:portfolio/pages/home/home.dart';
import 'package:portfolio/pages/services/services.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomePage(),
            AboutPage(),
            ServicePage(),
            ContactPage(),
          ],
        ),
      ),
    );
  }
}
