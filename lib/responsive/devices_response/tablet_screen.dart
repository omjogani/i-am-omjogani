import 'package:iamomjogani/navbar/tablet_navbar.dart';
import 'package:iamomjogani/screens/landing_screen/learned_skill_and_footer/learned_skill_and_footer.dart';
import 'package:iamomjogani/screens/landing_screen/main_section/main_screen.dart';
import 'package:iamomjogani/screens/landing_screen/my_education/my_education.dart';
import 'package:iamomjogani/screens/landing_screen/what_i_do/what_i_do.dart';
import 'package:flutter/material.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

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
                  TabletNavbar(),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 40.0,
                    ),
                    child: MainScreen(isMobile: true),
                  ),
                  const WhatIDo(),
                  const SizedBox(
                    height: 80.0,
                  ),
                  const MyEducation(
                    isMobile: true,
                  ),
                  const SizedBox(height: 60.0),
                  const LearnedSkillAndFooter(
                    isMobile: false,
                    isTablet: true,
                  ),
                ],
              ),
            ],
          ),
          // TechnologyList(),
        ],
      ),
    );
  }
}
