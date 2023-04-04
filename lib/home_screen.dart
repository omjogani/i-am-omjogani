import 'package:iamomjogani/navbar/DrawerComponents/drawer_navigation.dart';
import 'package:iamomjogani/responsive/responsive_wrapper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      drawer: const Drawer(
        child: DrawerNavigation(),
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: ResponsiveWrapper(
          scaffoldKey: _scaffoldKey,
        ),
      ),
    );
  }
}
