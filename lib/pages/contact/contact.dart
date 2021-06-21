import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future _launchURL(String url) async => await canLaunch(url)
        ? await launch(url)
        : throw 'Could not launch $url';
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HireMeWidget(),
        const SizedBox(height: 120),
        Center(
          child: Text(
            'Wants to Connect with me?',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w300,
              letterSpacing: 1,
            ),
          ),
        ),
        const SizedBox(height: 90),
        Wrap(
          direction: Axis.horizontal,
          children: [
            IconButton(
              hoverColor: Theme.of(context).primaryColor,
              splashColor: Theme.of(context).primaryColor,
              onPressed: () {
                _launchURL('https://www.facebook.com/rana.abdulhaseeb.5/');
              },
              icon: Icon(FontAwesomeIcons.facebookF),
            ),
            const SizedBox(width: 20),
            IconButton(
              hoverColor: Theme.of(context).primaryColor,
              splashColor: Theme.of(context).primaryColor,
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.twitter),
            ),
            const SizedBox(width: 20),
            IconButton(
              hoverColor: Theme.of(context).primaryColor,
              splashColor: Theme.of(context).primaryColor,
              onPressed: () {
                _launchURL(
                    'https://www.linkedin.com/in/abdul-haseeb-073682183/');
              },
              icon: Icon(FontAwesomeIcons.linkedinIn),
            ),
            const SizedBox(width: 20),
            IconButton(
              hoverColor: Theme.of(context).primaryColor,
              splashColor: Theme.of(context).primaryColor,
              onPressed: () {
                _launchURL('https://github.com/askabdulhaseeb');
              },
              icon: Icon(FontAwesomeIcons.github),
            ),
            const SizedBox(width: 20),
            IconButton(
              hoverColor: Theme.of(context).primaryColor,
              splashColor: Theme.of(context).primaryColor,
              onPressed: () {
                _launchURL('https://www.instagram.com/r_abdulhaseeb/');
              },
              icon: Icon(FontAwesomeIcons.instagram),
            ),
          ],
        ),
        const SizedBox(height: 60),
      ],
    );
  }
}

class HireMeWidget extends StatelessWidget {
  const HireMeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future _launchURL(String url) async => await canLaunch(url)
        ? await launch(url)
        : throw 'Could not launch $url';
    return Container(
      height: 300,
      width: double.infinity,
      alignment: Alignment.center,
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Have you any project in mind?',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 32,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 60,
            child: Divider(
              color: Colors.white,
              thickness: 3,
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                _launchURL(
                    'https://www.linkedin.com/in/abdul-haseeb-073682183/');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.white,
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Text(
                  'HIRE ME',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }
}
