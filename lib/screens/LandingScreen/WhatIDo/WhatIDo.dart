import 'package:iamomjogani/constants.dart';
import 'package:iamomjogani/screens/LandingScreen/WhatIDo/WhatIDoCard.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WhatIDo extends StatelessWidget {
  Widget columnLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        WhatIDoCard(
          number: 1,
          title: "I Write Code !",
          description: "I used to write code that actually makes impact...",
          longDescription:
              "I used to write code that actually makes impact on somebody and not only that I also used to write code for production. As you might know in this era technology is getting upper edge and way more faster then old era.\n\nIn this technological Era, Coding is something that's enforce me to develop what I love to develop. It gives me change to integrate my thinking ability to solve actual real-life problems.",
          imagePath: "assets/images/illustrations/illustration-01.png",
          colors: <Color>[
            Color(0xFF02d4e3),
            Color(0xFF00AEFF),
            Color(0xFF0076FF),
          ],
          isMobile: true,
        ),
        SizedBox(height: 25.0),
        WhatIDoCard(
          number: 2,
          title: "I Contribute !",
          description: "I used to contribute to the Open Source Community...",
          longDescription:
              "I used to contribute to the Open Source Community because I like supporting someone's work if he actually makes someone's life easier. If I get change to contribute again then definatly I will be ready for that.\n\nIn fect, I have also particiated in Hectoberfest 2020 (An Open Source Contribution event hosted by Degital Ocean) and not only particiate but also completed as well.",
          imagePath: "assets/images/illustrations/illustration-02.png",
          colors: <Color>[
            Color(0xFFfe9a8b),
            Color(0xFFfd868c),
            Color(0xFFFF8181),
            Color(0xFFFD504F),
          ],
          isMobile: true,
        ),
        SizedBox(height: 25.0),
        WhatIDoCard(
          number: 3,
          title: "I Help !",
          description: "I used help by some of my knowledge because...",
          longDescription:
              "I used help by some of my knowledge because It gives me inner happiness that someone is happy with my help. So, I would definatly wanted to do it. I help those people who wanted to develop something but stuck somewhere.\n\nHelping the people in the community makes community stronger, and in computer related thing put multiple hands together make some great innovations, and that's the reason why I love to help..",
          imagePath: "assets/images/illustrations/illustration-11.png",
          colors: <Color>[
            Color(0xFF5BCEA6),
            Color(0xFF1997AB),
          ],
          isMobile: true,
        ),
      ],
    );
  }

  Widget rowLayout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        WhatIDoCard(
          number: 1,
          title: "I Write Code !",
          description: "I used to write code that actually makes impact...",
          longDescription:
              "I used to write code that actually makes impact on somebody and not only that I also used to write code for production. As you might know in this era technology is getting upper edge and way more faster then old era.\n\nIn this technological Era, Coding is something that's enforce me to develop what I love to develop. It gives me change to integrate my thinking ability to solve actual real-life problems.",
          imagePath: "assets/images/illustrations/illustration-01.png",
          colors: <Color>[
            Color(0xFF02d4e3),
            Color(0xFF00AEFF),
            Color(0xFF0076FF),
          ],
          isMobile: false,
        ),
        SizedBox(width: 25.0),
        WhatIDoCard(
          number: 2,
          title: "I Contribute !",
          description: "I used to contribute to the Open Source Community...",
          longDescription:
              "I used to contribute to the Open Source Community because I like supporting someone's work if he actually makes someone's life easier. If I get change to contribute again then definatly I will be ready for that.\n\nIn fect, I have also particiated in Hectoberfest 2020 (An Open Source Contribution event hosted by Degital Ocean) and not only particiate but also completed as well.",
          imagePath: "assets/images/illustrations/illustration-02.png",
          colors: <Color>[
            Color(0xFFfe9a8b),
            Color(0xFFfd868c),
            Color(0xFFFF8181),
            Color(0xFFFD504F),
          ],
          isMobile: false,
        ),
        SizedBox(width: 25.0),
        WhatIDoCard(
          number: 3,
          title: "I Help !",
          description: "I used help by some of my knowledge because...",
          longDescription:
              "I used help by some of my knowledge because It gives me inner happiness that someone is happy with my help. So, I would definatly wanted to do it. I help those people who wanted to develop something but stuck somewhere.\n\nHelping the people in the community makes community stronger, and in computer related thing put multiple hands together make some great innovations, and that's the reason why I love to help..",
          imagePath: "assets/images/illustrations/illustration-11.png",
          colors: <Color>[
            Color(0xFF5BCEA6),
            Color(0xFF1997AB),
          ],
          isMobile: false,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "What I Do !",
            style: kTitleTextStyle,
          ),
          SizedBox(height: 10.0),
          Container(
            width: size.width * 0.60,
            height: 3.0,
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(1.5),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple,
                  offset: Offset(0, 20),
                  blurRadius: 30.0,
                ),
                BoxShadow(
                  color: Colors.orange,
                  offset: Offset(0, 20),
                  blurRadius: 30.0,
                ),
              ],
            ),
          ),
          SizedBox(height: 15.0),
          ScreenTypeLayout(
            mobile: columnLayout(),
            tablet: columnLayout(),
            desktop: rowLayout(),
          ),
        ],
      ),
    );
  }
}
