import 'dart:ui';

import 'package:iamomjogani/constants.dart';
import 'package:iamomjogani/screens/Projects/ProjectScreen.dart';
import 'package:iamomjogani/services/ShoUpAnimation.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen({required this.isMobile});

  final bool isMobile;
  List<Widget> projectShowCase(Size size, BuildContext context) {
    return <Widget>[
      Padding(
        padding: EdgeInsets.only(
          left: 10.0,
          top: 10.0,
          bottom: isMobile ? 0.0 : 10.0,
          right: isMobile ? 10.0 : 0.0,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(38.2),
          child: Container(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 6.0,
                sigmaY: 6.0,
              ),
              child: Container(
                width: isMobile ? size.width * 0.75 : 250,
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 30,
                      offset: Offset(2, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(38.2),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.2),
                    width: 1.0,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.5),
                      Colors.white.withOpacity(0.1),
                    ],
                    stops: [
                      0.0,
                      1.0,
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/projects.png",
                    width: isMobile ? size.width * 0.75 : 250,
                    height: isMobile ? 200 : 280,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      isMobile
          ? Row(
              children: <Widget>[
                projectButton(context),
              ],
            )
          : projectButton(context),
    ];
  }

  Widget projectButton(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(38.2),
          child: Container(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 6.0,
                sigmaY: 6.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 30,
                      offset: Offset(2, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(38.2),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.2),
                    width: 1.0,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white.withOpacity(0.5),
                      Colors.white.withOpacity(0.1),
                    ],
                    stops: [
                      0.0,
                      3.0,
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: isMobile ? 180 : 280,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "Take a look at \nProjects I have build...",
                          textAlign: TextAlign.center,
                          style: kNormalTextStyle.copyWith(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProjectScreen(isMobile: isMobile),
                              ),
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 150.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1.5,
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: <Color>[
                                  Color(0xFF02d4e3),
                                  Color(0xFF00AEFF),
                                  Color(0xFF0076FF),
                                ],
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  // color: Color(0xFF00AEFF),
                                  color: Color(0xFF00AEFF),
                                  offset: Offset(0, 12),
                                  blurRadius: 16.0,
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  "Projects",
                                  style: kNormalTextStyle,
                                ),
                                // SizedBox(width: 10.0),
                                Image.asset(
                                  "assets/images/workwithme.png",
                                  height: 20.0,
                                  width: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget workTogether(Size size) {
    return Container(
      height: 150,
      width: isMobile ? size.width * 0.85 : size.width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
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
            offset: Offset(0, 12),
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
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
                          boxShadow: [
                            BoxShadow(
                              color: kShadowColor,
                              offset: Offset(0, 12),
                              blurRadius: 16.0,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "About Me !",
                            style: TextStyle(
                              fontSize: 35.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: ShowUp(
                    delay: 500,
                    child: Text(
                      "Hey, There",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: ShowUp(
                    delay: 500,
                    child: Text(
                      "I'm Om Jogani",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ShowUp(
                    delay: 500,
                    child: Text(
                      "               A Computer Engineer and Programmer by profession. I used to write code that makes an impact on somebody and not only that I write code for production. I used to contribute to open source a lot and that gives me inner happiness and learning that I can have from those things is top-notch. I also help people with some of the knowledge that I have. I fight with bugs and create such awesome and beautiful Mobile or Web Apps. In a short period, I got excellence not only in development but also in other fields like Designing, Blogging, Tech Articles, Video Editing, Photo Editing, and Graphics Design. I would like to polish your project with my skill and make it more shining. I would like to work on your next project together.",
                      textAlign: TextAlign.justify,
                      style: kNormalTextStyle,
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                ShowUp(
                  delay: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: isMobile ? size.width * 0.80 : size.width / 2,
                        height: isMobile ? 450 : 300.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[
                              Color(0xFF02d4e3),
                              Color(0xFF00AEFF),
                              Color(0xFF0076FF),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(41.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFfd868c).withOpacity(0.5),
                              offset: Offset(0, 20),
                              blurRadius: 30.0,
                            ),
                            BoxShadow(
                              color: Color(0xFFfd868c).withOpacity(0.5),
                              offset: Offset(0, 20),
                              blurRadius: 30.0,
                            )
                          ],
                        ),
                        child: isMobile
                            ? Column(
                                children: projectShowCase(size, context),
                              )
                            : Row(
                                children: projectShowCase(size, context),
                              ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40.0),
                ShowUp(
                  delay: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      workTogether(size),
                    ],
                  ),
                ),
                SizedBox(height: 40.0),
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
                              "That's Enough, If you want to know more reach me out... ",
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
}
