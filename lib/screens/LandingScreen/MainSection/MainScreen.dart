import 'package:iamomjogani/constants.dart';
import 'package:iamomjogani/screens/About/AboutScreen.dart';
import 'package:iamomjogani/services/ShoUpAnimation.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({required this.isMobile});
  final bool isMobile;
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int delayAmount = 500;
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ShowUp(
              delay: delayAmount,
              child: Text(
                "Hello,\nI'm Om Jogani",
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ShowUp(
                delay: delayAmount,
                child: Text(
                  "A Computer Enginner, Full-Stack Flutter Developer...",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            ShowUp(
              delay: delayAmount,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          AboutScreen(isMobile: widget.isMobile),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 230,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFFa1c4fd),
                        Color(0xFFc2e9fb),
                      ],
                    ),
                    border: Border.all(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: kShadowColor.withOpacity(0.3),
                        offset: Offset(0, 20),
                        blurRadius: 30.0,
                      ),
                      BoxShadow(
                        color: kShadowColor.withOpacity(0.3),
                        offset: Offset(0, 20),
                        blurRadius: 30.0,
                      ),
                    ],
                  ),
                  child: Text(
                    "Know More about Me",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: ShowUp(
          delay: delayAmount,
          child: Container(
            width: width,
            child: Image.asset(
              "assets/images/Image.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
