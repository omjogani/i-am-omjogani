import 'package:iamomjogani/constants.dart';
import 'package:iamomjogani/screens/Contact/ContactScreen.dart';
import 'package:flutter/material.dart';

class LearnedSkillAndFooter extends StatelessWidget {
  LearnedSkillAndFooter({required this.isMobile, required this.isTablet});
  final bool isMobile;
  final bool isTablet;
  Widget wholeContent(Size size, BuildContext context) {
    return Container(
      width: size.width,
      decoration: isMobile || isTablet
          ? BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/bg-footer.jpg",
                ),
                fit: BoxFit.cover,
              ),
            )
          : BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: isMobile ? size.width * 0.95 : size.width * 0.70,
            child: Text(
              "In a short time, I have been able to achieve excellence in various areas of Designing, Development, Video Editing, Photo Editing and Graphics Design. Still a lot to Explore...",
              textAlign: TextAlign.center,
              style: kNormalTextStyle.copyWith(
                fontSize: isMobile || isTablet ? 25.0 : 30.0,
              ),
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            width: isMobile
                ? size.width * 0.95
                : isTablet
                    ? size.width * 0.95
                    : size.width * 0.90,
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFFC8E6C9),
                  Color(0xFFA5D6A7),
                  Color(0xFF81C784),
                  Color(0xFF66BB6A),
                  Colors.green,
                ],
              ),
              // color: Colors.green[200],
              border: Border.all(
                width: 5.0,
                color: Color(0xFF1B5E20),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: kShadowColor,
                  offset: Offset(0, 12),
                  blurRadius: 16.0,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 130.0,
                    width: 130.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.33),
                      color: Color(0xFF66BB6A),
                      border: Border.all(
                        width: 1.0,
                        color: Colors.black,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: kShadowColor,
                          offset: Offset(0, 12),
                          blurRadius: 16.0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset(
                        "assets/images/contact.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              isMobile
                                  ? "Get in Touch\nWith Me"
                                  : "Get in Touch With Me",
                              maxLines: 2,
                              style: kTitleTextStyle.copyWith(
                                fontSize: isMobile
                                    ? 25.0
                                    : isTablet
                                        ? 25.0
                                        : 45.0,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ContactScreen(isMobile: isMobile),
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
                                      color: Colors.green,
                                      offset: Offset(0, 12),
                                      blurRadius: 16.0,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      "Contact",
                                      style: kNormalTextStyle,
                                    ),
                                    // SizedBox(width: 10.0),
                                    Image.asset(
                                      "assets/images/contact_icon.png",
                                      height: 20.0,
                                      width: 20.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          Text(
            "Thanks for Visiting !!",
            style: kNormalTextStyle.copyWith(
              fontSize: 28.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Text(
            "Copyright © 2021 Om Jogani, All Rights Reserved...",
            textAlign: TextAlign.center,
            style: kNormalTextStyle,
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return wholeContent(size, context);
  }
}
