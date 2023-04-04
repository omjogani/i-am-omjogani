import 'package:iamomjogani/Navbar/DrawerComponents/DrawerNavigation.dart';
import 'package:iamomjogani/Responsive/ResponsiveWrapper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      drawer: Drawer(
        child: DrawerNavigation(),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: ResponsiveWrapper(
          scaffoldKey: _scaffoldKey,
        ),
      ),
    );
  }
}
