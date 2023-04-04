import 'package:iamomjogani/constants.dart';
import 'package:iamomjogani/screens/about/about_screen.dart';
import 'package:iamomjogani/services/show_up_animation.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.isMobile});
  final bool isMobile;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int delayAmount = 500;
  List<Widget> pageChildren(double width) {
    return <Widget>[
      SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ShowUp(
              delay: delayAmount,
              child: const Text(
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
                child: const Text(
                  "A Computer Engineer, Full-Stack Flutter Developer...",
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
                    gradient: const LinearGradient(
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
                        offset: const Offset(0, 20),
                        blurRadius: 30.0,
                      ),
                      BoxShadow(
                        color: kShadowColor.withOpacity(0.3),
                        offset: const Offset(0, 20),
                        blurRadius: 30.0,
                      ),
                    ],
                  ),
                  child: const Text(
                    "Know More",
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
          child: SizedBox(
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
