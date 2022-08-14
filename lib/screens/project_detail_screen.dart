import 'package:challenge_one/models/project.dart';
import 'package:challenge_one/models/techonology.dart';
import 'package:challenge_one/screens/contact_us_screen.dart';
import 'package:challenge_one/utils/color_utils.dart';
import 'package:challenge_one/utils/transition_utils.dart';
import 'package:challenge_one/widgets/button.dart';
import 'package:challenge_one/widgets/labelled_text.dart';
import 'package:challenge_one/widgets/technology_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetailsScreen extends StatelessWidget {
  const ProjectDetailsScreen({
    Key? key,
    required this.project,
  }) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 42.0,
            color: ColorUtils.brightSaffron,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 24.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                project.projectName,
                style: const TextStyle(
                  fontSize: 22.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
                child: Hero(
                  tag: project.id,
                  child: Image.asset(
                    project.imageUrl,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
              Text(
                project.projectDescription,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const LabelledText(
                label: 'Client:',
                value: 'Baxata Global Pvt Limited',
              ),
              const SizedBox(
                height: 4.0,
              ),
              const LabelledText(
                label: 'Industry:',
                value: 'Social media and networking(pet and animals).',
              ),
              const SizedBox(
                height: 4.0,
              ),
              const LabelledText(
                label: 'Porject type:',
                value: 'Baxata(iOS and CMS)',
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                'Technology Used',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              SizedBox(
                height: 80.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: technologyList.length,
                  itemBuilder: ((context, index) => TechonologyItem(
                        technology: technologyList[index],
                      )),
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 12.0,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              LabelledText(
                label: 'Website:',
                value: 'www.ebpearls.com.au',
                onPressed: () {
                  _launchInWebViewWithJavaScript('www.ebpearls.com.au');
                },
                color: Colors.blue,
              ),
              const SizedBox(
                height: 24.0,
              ),
              Button(
                  text: 'Contact',
                  radius: 32.0,
                  onPressed: () {
                    Navigator.of(context).push(
                      TransitionUtils.slideTransition(
                        child: const ContactUsScreen(),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchInWebViewWithJavaScript(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }
}
