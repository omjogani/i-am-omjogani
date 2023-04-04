import 'package:iamomjogani/Navbar/NavigationMenuItem.dart';
import 'package:iamomjogani/screens/About/AboutScreen.dart';
import 'package:iamomjogani/screens/Contact/ContactScreen.dart';
import 'package:iamomjogani/screens/Projects/ProjectScreen.dart';
import 'package:flutter/material.dart';

class TabletNavbar extends StatefulWidget {
  @override
  _TabletNavbarState createState() => _TabletNavbarState();
}

class _TabletNavbarState extends State<TabletNavbar> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Om Jogani",
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10.0,
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
                    SizedBox(width: 10.0),
                    NavigationMenuItem(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AboutScreen(isMobile: true),
                          ),
                        );
                      },
                      duration: duration,
                      text: "About",
                      isSelected: false,
                    ),
                    SizedBox(width: 10.0),
                    NavigationMenuItem(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProjectScreen(isMobile: true),
                          ),
                        );
                      },
                      duration: duration,
                      text: "Projects",
                      isSelected: false,
                    ),
                    SizedBox(width: 10.0),
                    NavigationMenuItem(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContactScreen(isMobile: true),
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
        ),
      ],
    );
  }
}
