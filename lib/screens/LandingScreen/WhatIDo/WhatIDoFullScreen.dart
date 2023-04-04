import 'package:iamomjogani/constants.dart';
import 'package:flutter/material.dart';

class WhatIDoFullScreen extends StatelessWidget {
  WhatIDoFullScreen({
    required this.colors,
    required this.number,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.isMobile,
  });

  final List<Color> colors;
  final int number;
  final String title;
  final String description;
  final String imagePath;
  final bool isMobile;
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: _buildChild(size, context),
      ),
    );
  }

  Widget _buildChild(Size size, BuildContext context) {
    return Center(
      child: Container(
        width: size.width * 0.90,
        height: size.height * 0.90,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colors,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 36.0,
                      width: 36.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.black45,
                        boxShadow: [
                          BoxShadow(
                            color: kShadowColor,
                            offset: Offset(0, 12),
                            blurRadius: 16.0,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // !Inner Content
            isMobile
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: listContent(context),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: listContent(context),
                  ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                ),
                child: Hero(
                  tag: "image$number",
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> listContent(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return <Widget>[
      Padding(
        padding: EdgeInsets.only(left: isMobile ? 0.0 : 100.0),
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "$number",
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18.0),
            boxShadow: <BoxShadow>[
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
      Padding(
        padding: EdgeInsets.only(
          top: isMobile ? 16.0 : 32.0,
          left: 32.0,
          right: 32.0,
        ),
        child: Container(
          width: isMobile ? size.width * 0.90 : size.width * 0.90 / 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              isMobile ? Container() : SizedBox(height: 10.0),
              Hero(
                tag: "title$number",
                child: Text(
                  title,
                  style: kNormalTextStyle.copyWith(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              isMobile
                  ? Container(
                      height: size.height * 0.35,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          description,
                          textAlign: TextAlign.justify,
                          style: kNormalTextStyle,
                        ),
                      ),
                    )
                  : Hero(
                      tag: "description$number",
                      child: Text(
                        description,
                        textAlign: TextAlign.justify,
                        style: kNormalTextStyle,
                      ),
                    ),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    ];
  }
}
