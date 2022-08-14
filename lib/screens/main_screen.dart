import 'package:challenge_one/screens/about_us_screen.dart';
import 'package:challenge_one/screens/contact_us_screen.dart';
import 'package:challenge_one/screens/home_screen.dart';
import 'package:challenge_one/screens/our_team_screen.dart';
import 'package:challenge_one/screens/project_screen.dart';
import 'package:challenge_one/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class MainScreeen extends StatefulWidget {
  const MainScreeen({Key? key}) : super(key: key);

  @override
  State<MainScreeen> createState() => _MainScreeenState();
}

class _MainScreeenState extends State<MainScreeen> {
  int _currentSelectedIndex = 0;
  final _screenList = [
    const HomeScreen(),
    const ProjectsScreen(),
    const AboutUsScreen(),
    const OurTeamScreen(),
    const ContactUsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screenList[_currentSelectedIndex],
        bottomNavigationBar: BottomNavBar(
          currentIndex: _currentSelectedIndex,
          onTapped: (value) {
            setState(() {
              _currentSelectedIndex = value;
            });
          },
        ));
  }
}
