import 'package:iamomjogani/constants.dart';
import 'package:iamomjogani/screens/landing_screen/what_i_do/what_i_do_card.dart';
import 'package:iamomjogani/services/show_up_animation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key, required this.isMobile});

  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: 20.0, horizontal: isMobile ? 20.0 : 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                backButtonAndTitle(context),
                const SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: ShowUp(
                    delay: 500,
                    child: const Text(
                      "Take a look at Projects that I have made...",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ShowUp(
                    delay: 500,
                    child: Text(
                      "DISCLAIMER: These Projects is entirely made by me. There is not any external person or entity include in these projects.",
                      textAlign: TextAlign.left,
                      style: kNormalTextStyle,
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),
                ScreenTypeLayout.builder(
                  mobile: (BuildContext context) =>
                      insertAnimation(columnLayout()),
                  tablet: (BuildContext context) =>
                      insertAnimation(columnLayout()),
                  desktop: (BuildContext context) =>
                      insertAnimation(rowLayout()),
                ),
                const SizedBox(height: 40.0),
                ShowUp(
                  delay: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      workTogether(size),
                    ],
                  ),
                ),
                const SizedBox(height: 60.0),
                ShowUp(
                  delay: 500,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text(
                              "Copyright © 2023 Om Jogani, All Rights Reserved...",
                              textAlign: TextAlign.center,
                              style: kNormalTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget insertAnimation(Widget child) {
    return ShowUp(
      delay: 500,
      child: child,
    );
  }

  Widget columnLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const <Widget>[
        WhatIDoCard(
          number: 1,
          title: "Student Mentor",
          description: "Student Mentor App: The Ultimate Education Hub...",
          longDescription:
              "Student Mentor: The Ultimate Education Hub App. This app contain all the study material and video tutorials for standard 1 to 12 including Science and Commerce for Gujarati Medium only. \n\nWhile, This app is called \"The Ultimate Education Hub\" that means It has some extra features that made this app \"Ultimate Education\". This App Contain Productivity tools like Time Management with TODO, Reading Mode etc (in Future), that helps students to utilize their time 100% and can be more productive in daily life...",
          imagePath: "assets/images/illustrations/illustration-01.png",
          colors: <Color>[
            Color(0xFFFF9F4A),
            Color(0xFFFF3C83),
          ],
          isMobile: true,
        ),
        SizedBox(height: 25.0),
        WhatIDoCard(
          number: 2,
          title: "Water Notifier",
          description: "GUI Desktop App that will notify you to drink water...",
          longDescription:
              "GUI Desktop App that will notify you to drink water. As you know nowadays, people are doing jobs in office in front of computers and amount of water they drunk is not good enough.\n\nSo, To solve this real-life problem I have developed GUI base app that will notify to drink water based on your age and weight. This Software will collect Your Name, Age and Weight and based on that it will notify you to drink water. This process will be run in background so it will not destruct you any more...",
          imagePath: "assets/images/projects/waternotifier.png",
          colors: <Color>[
            Color(0xFF09c6f9),
            Color(0xFF045de9),
          ],
          isMobile: true,
        ),
        SizedBox(height: 25.0),
        WhatIDoCard(
          number: 3,
          title: "My Portfolio",
          description: "Everything describe me is available on this WebApp...",
          longDescription:
              "Everything describe me is available on this WebApp. It contains Who I am?, What I do?, What I am looking forward to do? and What I have already done so far...\n\nMy Portfolio contains all the big and small projects that I have made with it's description. By the way this is also the project I have made. Not only that but it has details about me like my qualification, profession and contact information too...",
          imagePath: "assets/images/projects/portfolio.png",
          colors: <Color>[
            Color(0xFF00e6b8),
            Color(0xFF007adf),
          ],
          isMobile: true,
        ),
      ],
    );
  }

  Widget rowLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        WhatIDoCard(
          number: 1,
          title: "Student Mentor",
          description: "Student Mentor App: The Ultimate Education Hub...",
          longDescription:
              "Student Mentor: The Ultimate Education Hub App. This app contain all the study material and video tutorials for standard 1 to 12 including Science and Commerce for Gujarati Medium only. \n\nWhile, This app is called \"The Ultimate Education Hub\" that means It has some extra features that made this app \"Ultimate Education\". This App Contain Productivity tools like Time Management with TODO, Reading Mode etc (in Future), that helps students to utilize their time 100% and can be more productive in daily life...",
          imagePath: "assets/images/illustrations/illustration-01.png",
          colors: <Color>[
            Color(0xFFFF9F4A),
            Color(0xFFFF3C83),
          ],
          isMobile: false,
        ),
        SizedBox(width: 25.0),
        WhatIDoCard(
          number: 2,
          title: "Water Notifier",
          description: "GUI Desktop App that will notify you to drink water...",
          longDescription:
              "GUI Desktop App that will notify you to drink water. As you know nowadays, people are doing jobs in office in front of computers and amount of water they drunk is not good enough.\n\nSo, To solve this real-life problem I have developed GUI base app that will notify to drink water based on your age and weight. This Software will collect Your Name, Age and Weight and based on that it will notify you to drink water. This process will be run in background so it will not destruct you any more...",
          imagePath: "assets/images/projects/waternotifier.png",
          colors: <Color>[
            Color(0xFF09c6f9),
            Color(0xFF045de9),
          ],
          isMobile: false,
        ),
        SizedBox(width: 25.0),
        WhatIDoCard(
          number: 3,
          title: "My Portfolio",
          description: "Everything describe me is available on this WebApp...",
          longDescription:
              "Everything describe me is available on this WebApp. It contains Who I am?, What I do?, What I am looking forward to do? and What I have already done so far...\n\nMy Portfolio contains all the big and small projects that I have made with it's description. By the way this is also the project I have made. Not only that but it has details about me like my qualification, profession and contact information too...",
          imagePath: "assets/images/projects/portfolio.png",
          colors: <Color>[
            Color(0xFF00e6b8),
            Color(0xFF007adf),
          ],
          isMobile: false,
        ),
      ],
    );
  }

  Widget workTogether(Size size) {
    return Container(
      height: 150,
      width: isMobile ? size.width * 0.85 : size.width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFFD504F),
            Color(0xFFFF8181),
            Color(0xFFfe9a8b),
            Color(0xFFfd868c),
            Color(0xFFFF8181),
            Color(0xFFFD504F),
          ],
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.purple.withOpacity(0.3),
            offset: const Offset(0, 12),
            blurRadius: 16.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Text(
              "Let's Work Together on your Next Project...",
              textAlign: TextAlign.center,
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset(
              "assets/images/workwithme.png",
              height: 50.0,
              width: 40.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget backButtonAndTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
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
              Icons.arrow_back_rounded,
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                "Project Showcase",
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
