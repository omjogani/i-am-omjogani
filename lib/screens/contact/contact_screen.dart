import 'dart:ui';
import 'dart:js' as js;

import 'package:iamomjogani/constants.dart';
import 'package:iamomjogani/services/show_up_animation.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key, required this.isMobile});

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                backButtonAndTitle(context),
                const SizedBox(height: 40.0),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: ShowUp(
                    delay: 500,
                    child: const Text(
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
                const SizedBox(height: 20.0),
                ShowUp(
                  delay: 500,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: isMobile ? size.width * 0.80 : size.width / 2,
                        height: isMobile ? 450 : 300.0,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
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
                              color: const Color(0xFFfd868c).withOpacity(0.5),
                              offset: const Offset(0, 20),
                              blurRadius: 30.0,
                            ),
                            BoxShadow(
                              color: const Color(0xFFfd868c).withOpacity(0.5),
                              offset: const Offset(0, 20),
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
                const SizedBox(height: 40.0),
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
                    offset: const Offset(2, 2),
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
                  stops: const <double>[
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
                    offset: const Offset(2, 2),
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
                  stops: const <double>[
                    0.0,
                    3.0,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
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
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          socialLinkCard(
                              "assets/images/SocialMedia/github.png", (){
                                js.context.callMethod('open', ["https://github.com/omjogani"]);
                              }),
                          socialLinkCard(
                              "assets/images/SocialMedia/linkedin.png", (){
                                js.context.callMethod('open', ["https://www.linkedin.com/in/omjogani/"]);
                              }),
                          socialLinkCard(
                              "assets/images/SocialMedia/twitter.png", (){
                                js.context.callMethod('open', ["https://twitter.com/omjoganii"]);
                              }),
                          socialLinkCard(
                              "assets/images/SocialMedia/instagram.png", (){
                                js.context.callMethod('open', ["https://instagram.com/omjogani"]);
                              }),
                        ],
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
    );
  }

  Widget socialLinkCard(String imagePath, Function onPressed) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => onPressed(),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            height: 45.0,
            width: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              // color: Colors.black54,
            ),
            alignment: Alignment.center,
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
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
