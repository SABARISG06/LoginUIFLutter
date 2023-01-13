import 'package:flutter/material.dart';
import 'package:mobileappprojects/custombuttonwid/elevatedbu.dart';

class SocialSignInButton extends CustomElevatedButton {
  SocialSignInButton({
    super.key,
    String? text,
    String? imageName,
    Color? color,
    Color? fgcolor,
    Color? bgcolor,
    VoidCallback? onPressed,
    double? borderRadius,
    double? fontsize,
    double? height,
  }) : super(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(imageName!),
              Text(
                text!,
                style: TextStyle(
                  color: color,
                  fontSize: fontsize,
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: Image.asset(imageName),
              ),
            ],
          ),
          height: height,
          borderRadius: borderRadius!,
          bgcolor: bgcolor,
          fgcolor: fgcolor,
          onPressed: onPressed,
        );
}
