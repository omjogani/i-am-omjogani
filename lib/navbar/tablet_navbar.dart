import 'package:iamomjogani/navbar/navigation_menuItem.dart';
import 'package:iamomjogani/screens/about/about_screen.dart';
import 'package:iamomjogani/screens/contact/contact_screen.dart';
import 'package:iamomjogani/screens/Projects/project_screen.dart';
import 'package:flutter/material.dart';

class TabletNavbar extends StatefulWidget {
  const TabletNavbar({super.key});

  @override
  _TabletNavbarState createState() => _TabletNavbarState();
}

class _TabletNavbarState extends State<TabletNavbar> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Om Jogani",
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10.0
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  NavigationMenuItem(
                    onTap: () {},
                    duration: duration,
                    text: "Home",
                    isSelected: true,
                  ),
                  const SizedBox(width: 10.0),
                  NavigationMenuItem(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AboutScreen(isMobile: true),
                        ),
                      );
                    },
                    duration: duration,
                    text: "About",
                    isSelected: false,
                  ),
                  const SizedBox(width: 10.0),
                  NavigationMenuItem(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProjectScreen(isMobile: true),
                        ),
                      );
                    },
                    duration: duration,
                    text: "Projects",
                    isSelected: false,
                  ),
                  const SizedBox(width: 10.0),
                  NavigationMenuItem(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ContactScreen(isMobile: true),
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
        ),
      ],
    );
  }
}
