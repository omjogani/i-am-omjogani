import 'package:iamomjogani/Navbar/DesktopNavbar.dart';
import 'package:iamomjogani/screens/LandingScreen/LearnedSkillAndFooter/LearnedSkillAndFooter.dart';
import 'package:iamomjogani/screens/LandingScreen/MainSection/MainScreen.dart';
import 'package:iamomjogani/screens/LandingScreen/MyEducation/MyEducation.dart';
import 'package:iamomjogani/screens/LandingScreen/WhatIDo/WhatIDo.dart';
import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/background.png",
                    ),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  DesktopNavbar(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 40.0),
                    child: MainScreen(
                      isMobile: false,
                    ),
                  ),
                  WhatIDo(),
                  SizedBox(
                    height: 70.0,
                  ),
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/bg-footer.jpg",
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          MyEducation(
                            isMobile: false,
                          ),
                          SizedBox(
                            height: 70.0,
                          ),
                          LearnedSkillAndFooter(
                            isMobile: false,
                            isTablet: false,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              // TechnologyList(),
            ],
          ),
        ],
      ),
    );
  }
}
