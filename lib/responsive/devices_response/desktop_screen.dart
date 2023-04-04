import 'package:iamomjogani/navbar/desktop_navbar.dart';
import 'package:iamomjogani/screens/landing_screen/learned_skill_and_footer/learned_skill_and_footer.dart';
import 'package:iamomjogani/screens/landing_screen/main_section/main_screen.dart';
import 'package:iamomjogani/screens/landing_screen/my_education/my_education.dart';
import 'package:iamomjogani/screens/landing_screen/what_i_do/what_i_do.dart';
import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

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
                decoration: const BoxDecoration(
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
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 40.0,
                    ),
                    child: MainScreen(
                      isMobile: false,
                    ),
                  ),
                  const WhatIDo(),
                  const SizedBox(height: 70.0),
                  Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/bg-footer.jpg",
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: const <Widget>[
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
