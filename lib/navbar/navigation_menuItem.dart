import 'package:flutter/material.dart';
import 'package:iamomjogani/constants.dart';

class NavigationMenuItem extends StatefulWidget {
  const NavigationMenuItem({
    Key? key,
    required this.duration,
    required this.text,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  final Duration duration;
  final String text;
  final Function onTap;
  final bool isSelected;

  @override
  _NavigationMenuItemState createState() => _NavigationMenuItemState();
}

class _NavigationMenuItemState extends State<NavigationMenuItem>
    with SingleTickerProviderStateMixin {
  bool isHover = false;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(-0.2, 0.0),
    end: const Offset(0.2, 0.0),
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    ),
  );

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap();
      },
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: Column(
        children: <Widget>[
          AnimatedContainer(
            duration: widget.duration,
            height: 35.0,
            width: 100.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: widget.isSelected
                    ? [
                        Colors.white,
                        Colors.white,
                      ]
                    : [
                        Colors.white.withOpacity(0.1),
                        Colors.white.withOpacity(0.1),
                        // Colors.transparent,
                      ],
              ),
              borderRadius: BorderRadius.circular(50.0),
              boxShadow: [
                widget.isSelected
                    ? const BoxShadow(
                        color: kShadowColor,
                        offset: Offset(0, 12),
                        blurRadius: 16.0,
                      )
                    : const BoxShadow(
                        color: Colors.transparent,
                        offset: Offset(0, 12),
                        blurRadius: 16.0,
                      ),
              ],
            ),
            alignment: Alignment.center,
            child: Text(
              widget.text,
              style: kNormalTextStyle,
            ),
          ),
          isHover
              ? SlideTransition(
                  position: _offsetAnimation,
                  child: Container(
                    height: 2.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}