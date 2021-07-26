import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/configs/contact_handle.dart';
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
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w500,
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
                _launchURL(facebookPagehandle);
              },
              icon: Icon(FontAwesomeIcons.facebookF),
            ),
            const SizedBox(width: 20),
            IconButton(
              hoverColor: Theme.of(context).primaryColor,
              splashColor: Theme.of(context).primaryColor,
              onPressed: () {
                _popupMessage(context: context, title: 'WhatsApp');
              },
              icon: Icon(FontAwesomeIcons.whatsapp),
            ),
            const SizedBox(width: 20),
            IconButton(
              hoverColor: Theme.of(context).primaryColor,
              splashColor: Theme.of(context).primaryColor,
              onPressed: () {
                _popupMessage(context: context, title: 'Skype');
              },
              icon: Icon(FontAwesomeIcons.skype),
            ),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.copyright, size: 16),
            const SizedBox(width: 10),
            Text('2020-${DateTime.now().year} '),
            Text('All rights reserved.'),
          ],
        ),
      ],
    );
  }

  Future<dynamic> _popupMessage(
      {required String title, required BuildContext context}) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        content: FittedBox(
          child: Column(
            children: [
              SelectableText(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
              SelectableText(
                '+92 315 1119144',
                style: TextStyle(
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close'),
          )
        ],
      ),
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
      padding: const EdgeInsets.all(16),
      alignment: Alignment.center,
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Want to Donate for this Noble Cause?',
            textAlign: TextAlign.center,
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
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: Colors.white,
                    content: Container(
                      width: 320,
                      padding: const EdgeInsets.all(16),
                      child: SelectableText(
                        'Summit Bank\nTitle: Hassan Farooqi Khan\nAc # 1-5-1-20391-714-160181\nIBAN # 0501387140160181',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      )
                    ],
                  ),
                );
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
                  'DONATE',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }
}
