import 'dart:ui';

import 'package:iamomjogani/constants.dart';
import 'package:iamomjogani/services/ShoUpAnimation.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({required this.isMobile});
  final bool isMobile;
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                backButtonAndTitle(context),
                SizedBox(
                  height: 40.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: ShowUp(
                    delay: 500,
                    child: Text(
                      "Get in touch with me !",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
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
                                children: projectShowCase(size),
                              )
                            : Row(
                                children: projectShowCase(size),
                              ),
                      ),
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
                              "Copyright © 2021 Om Jogani, All Rights Reserved...",
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

  List<Widget> projectShowCase(Size size) {
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
                    "assets/images/contact1.png",
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
                projectButton(),
              ],
            )
          : projectButton(),
    ];
  }

  Widget projectButton() {
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
                          "You can mail me on\ngiven Mail-ID...",
                          textAlign: TextAlign.center,
                          style: kNormalTextStyle.copyWith(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "om.personal23@gmail.com",
                          style: kNormalTextStyle,
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
              boxShadow: <BoxShadow>[
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
                "Contact Me !",
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
