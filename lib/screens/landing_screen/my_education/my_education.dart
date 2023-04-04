import 'package:iamomjogani/constants.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyEducation extends StatelessWidget {
  const MyEducation({super.key, required this.isMobile});

  final bool isMobile;
  Widget timeLineTileCard(
    bool isFirst,
    bool isLast,
    String duration,
    String title,
    String description,
    List<Color> colors,
  ) {
    return TimelineTile(
      isFirst: isFirst,
      isLast: isLast,
      afterLineStyle: const LineStyle(
        color: Colors.blue,
      ),
      beforeLineStyle: const LineStyle(
        color: Colors.blue,
      ),
      hasIndicator: true,
      indicatorStyle: IndicatorStyle(
        width: 25.0,
        height: 25.0,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        indicator: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: colors,
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: kShadowColor.withOpacity(0.3),
                offset: const Offset(0, 20),
                blurRadius: 30.0,
              ),
              BoxShadow(
                color: kShadowColor.withOpacity(0.3),
                offset: const Offset(0, 20),
                blurRadius: 30.0,
              ),
            ],
            border: Border.all(
              color: Colors.black,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(45.0),
          ),
        ),
      ),
      alignment: TimelineAlign.manual,
      lineXY: 0.3,
      endChild: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: colors,
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: kShadowColor.withOpacity(0.3),
                offset: const Offset(0, 20),
                blurRadius: 30.0,
              ),
              BoxShadow(
                color: kShadowColor.withOpacity(0.3),
                offset: const Offset(0, 20),
                blurRadius: 30.0,
              ),
            ],
            border: Border.all(
              color: Colors.black,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: kNormalTextStyle.copyWith(
                    fontSize: 22.0, fontWeight: FontWeight.w700),
              ),
              Text(
                description,
                style: kNormalTextStyle,
              ),
            ],
          ),
          // child:
        ),
      ),
      startChild: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            duration,
            style: kNormalTextStyle,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        SizedBox(
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "My Education",
                style: kTitleTextStyle,
              ),
              const SizedBox(height: 10.0),
              Container(
                width: size.width * 0.60,
                height: 3.0,
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(1.5),
                  boxShadow: const <BoxShadow>[
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
              const SizedBox(height: 15.0),
              SizedBox(
                width: isMobile ? size.width * 0.95 : size.width / 2,
                child: Column(
                  children: <Widget>[
                    timeLineTileCard(
                      true,
                      false,
                      isMobile ? "2007\n   -\n2018" : "2007 - 2018",
                      "Primary Education",
                      "Completed Primary Education from Nalanda Vidhyalaya - 2, Surat.",
                      const <Color>[
                        Color(0xFF02d4e3),
                        Color(0xFF00AEFF),
                        Color(0xFF0076FF),
                      ],
                    ),
                    timeLineTileCard(
                      false,
                      false,
                      isMobile ? "2018\n   -\n2021" : "2018 - 2021",
                      "Diploma Engineering",
                      "Completed Diploma from Tapi Diploma Engineering College, Surat.\nCGPA: 10.00, CPI: 9.82",
                      const <Color>[
                        Color(0xFFfe9a8b),
                        Color(0xFFfd868c),
                        Color(0xFFFF8181),
                        Color(0xFFFD504F),
                      ],
                    ),
                    timeLineTileCard(
                      false,
                      true,
                      isMobile ? "2021\n   -\n2024" : "2021 - 2024",
                      "B.TECH Engineering",
                      "Pursuing B.TECH in Computer Engineering in DDU(Dharmsinh Desai University), Nadiad.\nCPI: 8.37",
                      const <Color>[
                        Color(0xFF5BCEA6),
                        Color(0xFF1997AB),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
