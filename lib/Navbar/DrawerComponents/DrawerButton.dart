import 'package:iamomjogani/constants.dart';
import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  DrawerButton({
    required this.triggerAnimation,
  });

  final Function triggerAnimation;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => triggerAnimation,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      constraints: BoxConstraints(
        maxWidth: 40.0,
        maxHeight: 40.0,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14.0),
            boxShadow: [
              BoxShadow(
                color: kShadowColor,
                offset: Offset(0, 12),
                blurRadius: 16.0,
              )
            ]),
        child: Icon(Icons.menu_rounded),
        padding: EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 14.0,
        ),
      ),
    );
  }
}
