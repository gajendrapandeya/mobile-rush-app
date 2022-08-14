import 'package:challenge_one/utils/color_utils.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTapped,
  }) : super(key: key);
  final int currentIndex;
  final Function(int) onTapped;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        onTapped(index);
      },
      selectedItemColor: ColorUtils.brightSaffron,
      backgroundColor: ColorUtils.stoneBlack,
      unselectedItemColor: Colors.grey.shade300,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/ic_home.png'),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/ic_projects.png'),
          ),
          label: 'Projects',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/ic_about_us.png'),
          ),
          label: 'About Us',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/ic_team.png'),
          ),
          label: 'Our Team',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/ic_contacts.png'),
          ),
          label: 'Contact Us',
        ),
      ],
    );
  }
}
