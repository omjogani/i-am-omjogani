import 'package:iamomjogani/Navbar/NavigationMenuItem.dart';
import 'package:iamomjogani/screens/About/AboutScreen.dart';
import 'package:iamomjogani/screens/Contact/ContactScreen.dart';
import 'package:iamomjogani/screens/Projects/ProjectScreen.dart';
import 'package:flutter/material.dart';

class DesktopNavbar extends StatefulWidget {
  @override
  _DesktopNavbarState createState() => _DesktopNavbarState();
}

class _DesktopNavbarState extends State<DesktopNavbar> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
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
                SizedBox(width: 15.0),
                NavigationMenuItem(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutScreen(isMobile: false),
                      ),
                    );
                  },
                  duration: duration,
                  text: "About",
                  isSelected: false,
                ),
                SizedBox(width: 15.0),
                NavigationMenuItem(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProjectScreen(isMobile: false),
                      ),
                    );
                  },
                  duration: duration,
                  text: "Projects",
                  isSelected: false,
                ),
                SizedBox(width: 15.0),
                NavigationMenuItem(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactScreen(isMobile: false),
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
    );
  }
}
