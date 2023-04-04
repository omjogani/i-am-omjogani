import 'package:iamomjogani/navbar/mobile_navbar.dart';
import 'package:flutter/material.dart';
import 'package:iamomjogani/screens/landing_screen/learned_skill_and_footer/learned_skill_and_footer.dart';
import 'package:iamomjogani/screens/landing_screen/main_section/main_screen.dart';
import 'package:iamomjogani/screens/landing_screen/my_education/my_education.dart';
import 'package:iamomjogani/screens/landing_screen/what_i_do/what_i_do.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key, 
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;
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
                  MobileNavbar(scaffoldKey: scaffoldKey),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 40.0,
                    ),
                    child: MainScreen(isMobile: true),
                  ),
                  const SizedBox(height: 80.0),
                  const WhatIDo(),
                  const MyEducation(
                    isMobile: true,
                  ),
                  const SizedBox(
                    height: 70.0,
                  ),
                  const LearnedSkillAndFooter(
                    isMobile: true,
                    isTablet: false,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
