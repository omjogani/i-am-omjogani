import 'package:iamomjogani/Navbar/NavigationMenuItem.dart';
import 'package:iamomjogani/constants.dart';
import 'package:iamomjogani/screens/About/AboutScreen.dart';
import 'package:iamomjogani/screens/Contact/ContactScreen.dart';
import 'package:iamomjogani/screens/Projects/ProjectScreen.dart';
import 'package:flutter/material.dart';

class DrawerNavigation extends StatefulWidget {
  @override
  _DrawerNavigationState createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  bool isHover = false;
  Duration duration = Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
                Text(
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
                        boxShadow: [
                          BoxShadow(
                            color: kShadowColor,
                            offset: Offset(0, 12),
                            blurRadius: 16.0,
                          ),
                        ]),
                    child: Icon(
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
                  SizedBox(height: 25.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 36.0,
                        width: 36.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.black45,
                            boxShadow: [
                              BoxShadow(
                                color: kShadowColor,
                                offset: Offset(0, 12),
                                blurRadius: 16.0,
                              ),
                            ]),
                        child: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      NavigationMenuItem(
                        onTap: () {},
                        duration: duration,
                        text: "Home",
                        isSelected: true,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 36.0,
                        width: 36.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.black45,
                            boxShadow: [
                              BoxShadow(
                                color: kShadowColor,
                                offset: Offset(0, 12),
                                blurRadius: 16.0,
                              ),
                            ]),
                        child: Icon(
                          Icons.info_outline_rounded,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      SizedBox(height: 10.0),
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
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 36.0,
                        width: 36.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.black45,
                          boxShadow: [
                            BoxShadow(
                              color: kShadowColor,
                              offset: Offset(0, 12),
                              blurRadius: 16.0,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.code_rounded,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      SizedBox(height: 10.0),
                      NavigationMenuItem(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ProjectScreen(isMobile: true),
                            ),
                          );
                        },
                        duration: duration,
                        text: "Projects",
                        isSelected: false,
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 36.0,
                        width: 36.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.black45,
                            boxShadow: [
                              BoxShadow(
                                color: kShadowColor,
                                offset: Offset(0, 12),
                                blurRadius: 16.0,
                              ),
                            ]),
                        child: Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      SizedBox(height: 10.0),
                      NavigationMenuItem(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ContactScreen(isMobile: true),
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
