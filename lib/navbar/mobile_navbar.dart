import 'package:iamomjogani/constants.dart';
import 'package:flutter/material.dart';

class MobileNavbar extends StatefulWidget {
  const MobileNavbar({super.key, 
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  _MobileNavbarState createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              widget.scaffoldKey.currentState!.openDrawer();
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
                Icons.menu_rounded,
                color: Colors.white,
              ),
            ),
          ),
          const Text(
            "Om Jogani",
            style: TextStyle(
              fontSize: 35.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
