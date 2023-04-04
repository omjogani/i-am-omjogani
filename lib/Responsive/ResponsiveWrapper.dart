import 'package:iamomjogani/Responsive/DevicesResponce/DesktopScreen.dart';
import 'package:iamomjogani/Responsive/DevicesResponce/MobileScreen.dart';
import 'package:iamomjogani/Responsive/DevicesResponce/TabletScreen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveWrapper extends StatelessWidget {
  ResponsiveWrapper({
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileScreen(scaffoldKey: scaffoldKey),
      tablet: TabletScreen(),
      desktop: DesktopScreen(),
    );
  }
}
