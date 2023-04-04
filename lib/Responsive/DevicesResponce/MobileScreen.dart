import 'package:iamomjogani/Navbar/MobileNavbar.dart';
import 'package:iamomjogani/screens/LandingScreen/LearnedSkillAndFooter/LearnedSkillAndFooter.dart';
import 'package:iamomjogani/screens/LandingScreen/MainSection/MainScreen.dart';
import 'package:iamomjogani/screens/LandingScreen/MyEducation/MyEducation.dart';
import 'package:iamomjogani/screens/LandingScreen/WhatIDo/WhatIDo.dart';
import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  MobileScreen({
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
                  MobileNavbar(scaffoldKey: scaffoldKey),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 40.0),
                    child: MainScreen(isMobile: true),
                  ),
                  SizedBox(
                    height: 80.0,
                  ),
                  WhatIDo(),
                  MyEducation(
                    isMobile: true,
                  ),
                  SizedBox(
                    height: 70.0,
                  ),
                  LearnedSkillAndFooter(
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
