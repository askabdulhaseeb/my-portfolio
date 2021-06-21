import 'package:flutter/material.dart';
import 'package:portfolio/configs/app_images.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future _launchURL(String url) async => await canLaunch(url)
        ? await launch(url)
        : throw 'Could not launch $url';
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: [
          HomePageBackground(size: size),
          Positioned(
            right: (size.width < 830)
                ? (size.width < 600)
                    ? size.width * 0.001
                    : size.width * 0.13
                : size.width * 0.23,
            bottom: 0,
            child: SizedBox(
              height: size.height * 0.9,
              child: Image.asset(iPersonImage),
            ),
          ),
          Positioned(
            left: size.width / 12,
            top: size.height / 2.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello',
                  style: TextStyle(color: Colors.white70, letterSpacing: 2),
                ),
                SelectableText(
                  '''I'm Abdul Haseeb''',
                  maxLines: 3,
                  minLines: 1,
                  style: TextStyle(
                    fontSize: (size.width > 830) ? 60 : 30,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Flutter Mobile Application Developer',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.white70,
                    letterSpacing: 4,
                    wordSpacing: 3,
                    fontSize: (size.width > 830) ? 14 : 10,
                  ),
                ),
                const SizedBox(height: 50),
                OutlinedButton(
                  onPressed: () {
                    _launchURL(
                        'https://www.linkedin.com/in/abdul-haseeb-073682183/');
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Text(
                      'Hire Me',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HomePageBackground extends StatelessWidget {
  const HomePageBackground({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Container(
          width: size.width / 2.5,
          height: size.height,
          color: Theme.of(context).primaryColor,
        )
      ],
    );
  }
}
