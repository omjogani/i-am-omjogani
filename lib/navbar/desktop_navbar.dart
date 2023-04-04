import 'package:iamomjogani/navbar/navigation_menuItem.dart';
import 'package:iamomjogani/screens/about/about_screen.dart';
import 'package:iamomjogani/screens/contact/contact_screen.dart';
import 'package:iamomjogani/screens/Projects/project_screen.dart';
import 'package:flutter/material.dart';

class DesktopNavbar extends StatefulWidget {
  const DesktopNavbar({super.key});

  @override
  _DesktopNavbarState createState() => _DesktopNavbarState();
}

class _DesktopNavbarState extends State<DesktopNavbar> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text(
            "Om Jogani",
            style: TextStyle(
              fontSize: 35.0,
              color: Colors.black,
            ),
          ),
          Row(
            children: <Widget>[
              NavigationMenuItem(
                onTap: () {},
                duration: duration,
                text: "Home",
                isSelected: true,
              ),
              const SizedBox(width: 15.0),
              NavigationMenuItem(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutScreen(isMobile: false),
                    ),
                  );
                },
                duration: duration,
                text: "About",
                isSelected: false,
              ),
              const SizedBox(width: 15.0),
              NavigationMenuItem(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProjectScreen(isMobile: false),
                    ),
                  );
                },
                duration: duration,
                text: "Projects",
                isSelected: false,
              ),
              const SizedBox(width: 15.0),
              NavigationMenuItem(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactScreen(isMobile: false),
                    ),
                  );
                },
                duration: duration,
                text: "Contact",
                isSelected: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
