import 'package:flutter/material.dart';
import 'package:mobileappprojects/custombuttonwid/elevatedbu.dart';

class SignInButton extends CustomElevatedButton {
  SignInButton({
    super.key,
    required String text,
    Color? color,
    Color? fgcolor,
    Color? bgcolor,
    VoidCallback? onPressed,
    double? borderRadius,
    double? fontsize,
    double? height,
  }) : super(
          child: Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: fontsize,
            ),
          ),
          height: height,
          borderRadius: borderRadius!,
          bgcolor: bgcolor,
          fgcolor: fgcolor,
          onPressed: onPressed,
        );
}
