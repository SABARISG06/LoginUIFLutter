import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.child,
    required this.bgcolor,
    required this.borderRadius,
    required this.onPressed,
    required this.padding,
    required this.fgcolor,
  }) : super(key: key);

  final Widget child;
  final Color bgcolor;
  final double borderRadius;
  final VoidCallback onPressed;
  final double padding;
  final Color fgcolor;
  // final Colors colors;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor,
        foregroundColor: fgcolor,
        padding: EdgeInsets.all(padding),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
