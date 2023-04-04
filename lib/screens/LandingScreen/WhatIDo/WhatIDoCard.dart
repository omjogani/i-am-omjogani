import 'package:iamomjogani/constants.dart';
import 'package:iamomjogani/screens/LandingScreen/WhatIDo/WhatIDoFullScreen.dart';
import 'package:flutter/material.dart';

class WhatIDoCard extends StatelessWidget {
  WhatIDoCard({
    required this.number,
    required this.title,
    required this.description,
    required this.longDescription,
    required this.imagePath,
    required this.colors,
    required this.isMobile,
  });
  final int number;
  final String title;
  final String description;
  final String longDescription;
  final String imagePath;
  final List<Color> colors;
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            showGeneralDialog(
              barrierColor: Colors.black.withOpacity(0.5),
              transitionBuilder: (context, a1, a2, widget) {
                return Transform.scale(
                  scale: a1.value,
                  child: Opacity(
                    opacity: a1.value,
                    child: WhatIDoFullScreen(
                      colors: colors,
                      number: number,
                      title: title,
                      description: longDescription,
                      imagePath: imagePath,
                      isMobile: isMobile,
                    ),
                  ),
                );
              },
              transitionDuration: Duration(milliseconds: 250),
              barrierDismissible: true,
              barrierLabel: '',
              context: context,
              pageBuilder: (context, animation1, animation2) {
                return Text('PAGE BUILDER');
              },
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 27.0),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: colors,
                ),
                borderRadius: BorderRadius.circular(41.0),
                boxShadow: [
                  BoxShadow(
                      color: colors[0].withOpacity(0.5),
                      offset: Offset(0, 20),
                      blurRadius: 30.0),
                  BoxShadow(
                      color: colors[1].withOpacity(0.5),
                      offset: Offset(0, 20),
                      blurRadius: 30.0)
                ],
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 32.0,
                      left: 32.0,
                      right: 32.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 10.0),
                        Text(
                          title,
                          style: kNormalTextStyle.copyWith(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          description,
                          maxLines: 2,
                          textAlign: TextAlign.justify,
                          style: kNormalTextStyle,
                        ),
                        SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(41.0),
                      ),
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 42.0),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "$number",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                  color: kShadowColor,
                  offset: Offset(0, 4),
                  blurRadius: 16.0,
                )
              ],
            ),
            padding: EdgeInsets.all(12.0),
          ),
        ),
      ],
    );
  }
}
