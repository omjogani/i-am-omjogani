import 'package:iamomjogani/navbar/navigation_menuItem.dart';
import 'package:iamomjogani/constants.dart';
import 'package:iamomjogani/screens/about/about_screen.dart';
import 'package:iamomjogani/screens/contact/contact_screen.dart';
import 'package:iamomjogani/screens/projects/project_screen.dart';
import 'package:flutter/material.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({super.key});

  @override
  _DrawerNavigationState createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/images/background.png",
          ),
        ),
        color: kBackgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text(
                  "Om Jogani",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 36.0,
                    width: 36.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.black45,
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          color: kShadowColor,
                          offset: Offset(0, 12),
                          blurRadius: 16.0,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.close_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 36.0,
                        width: 36.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.black45,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: kShadowColor,
                              offset: Offset(0, 12),
                              blurRadius: 16.0,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      NavigationMenuItem(
                        onTap: () {},
                        duration: duration,
                        text: "Home",
                        isSelected: true,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 36.0,
                        width: 36.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.black45,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: kShadowColor,
                              offset: Offset(0, 12),
                              blurRadius: 16.0,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.info_outline_rounded,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      const SizedBox(height: 10.0),
                      NavigationMenuItem(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const AboutScreen(isMobile: true),
                            ),
                          );
                        },
                        duration: duration,
                        text: "About",
                        isSelected: false,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 36.0,
                        width: 36.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.black45,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: kShadowColor,
                              offset: Offset(0, 12),
                              blurRadius: 16.0,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      const SizedBox(height: 10.0),
                      NavigationMenuItem(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ProjectScreen(isMobile: true),
                            ),
                          );
                        },
                        duration: duration,
                        text: "Projects",
                        isSelected: false,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 36.0,
                        width: 36.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.black45,
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: kShadowColor,
                              offset: Offset(0, 12),
                              blurRadius: 16.0,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      const SizedBox(height: 10.0),
                      NavigationMenuItem(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ContactScreen(isMobile: true),
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
        ),
      ),
    );
  }
}
