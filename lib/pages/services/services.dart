import 'package:flutter/material.dart';
import 'package:portfolio/pages/widgets/customiz_underline_text.dart';

import 'service_card.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomizeUnderlineText(size: size, title: 'Services'),
          SizedBox(
            width: size.width / 1.5,
            child: SelectableText(
              '''I have a group of experts and together as a team we cover almost all the design and development areas of Mobile Applications, Websites (Both Static and Dynamic) and Desktop Applications. We also provide services in UI/UX designs. Along with all these skillful services, we focus on client’s requirements and most importantly on client’s satisfaction, to build long-term professional relationships with our clients.''',
            ),
          ),
          const SizedBox(height: 40),
          Wrap(
            direction: Axis.horizontal,
            children: [
              ServiceCard(
                color: Theme.of(context).primaryColor,
                icon: Icons.phone_android_rounded,
                title: 'App Developer',
                subtitle:
                    'A paragraph is a series of related sentences developing a central idea, called the topic.',
              ),
              ServiceCard(
                color: Colors.blue,
                icon: Icons.web_sharp,
                title: 'Web Developer',
                subtitle:
                    'A paragraph is a series of related sentences developing a central idea, called the topic.',
              ),
              ServiceCard(
                color: Colors.green,
                icon: Icons.computer,
                title: 'Desktop Developer',
                subtitle:
                    'A paragraph is a series of related sentences developing a central idea, called the topic.',
              ),
              ServiceCard(
                color: Colors.red,
                icon: Icons.phone_android_outlined,
                title: 'UI/UX Design',
                subtitle:
                    'A paragraph is a series of related sentences developing a central idea, called the topic.',
              ),
            ],
          )
        ],
      ),
    );
  }
}
