import 'package:iamomjogani/responsive/devices_response/desktop_screen.dart';
import 'package:iamomjogani/responsive/devices_response/mobile_screen.dart';
import 'package:iamomjogani/responsive/devices_response/tablet_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveWrapper extends StatelessWidget {
  ResponsiveWrapper({
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MobileScreen(scaffoldKey: scaffoldKey),
      tablet: (BuildContext context) => TabletScreen(),
      desktop:(BuildContext context) => DesktopScreen(),
    );
  }
}
