import 'package:challenge_one/models/project.dart';
import 'package:challenge_one/screens/project_detail_screen.dart';
import 'package:challenge_one/utils/color_utils.dart';
import 'package:challenge_one/widgets/project_item.dart';
import 'package:challenge_one/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: ListView(
              children: [
                const Text(
                  'Projects',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorUtils.stoneBlack,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                SearchBar(
                  controller: TextEditingController(),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: projectList.length,
                  itemBuilder: ((context, index) => InkWell(
                        onTap: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProjectDetailsScreen(
                                  project: projectList[index]),
                            ),
                          )
                        },
                        child: ProjectItem(
                          project: projectList[index],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
