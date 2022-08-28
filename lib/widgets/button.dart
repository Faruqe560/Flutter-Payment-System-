import 'dart:ui';

import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final double? fontSize;
  final IconData icon;
  final Function()? onTap;
  final Color? backgroundColor;
  final Color? IconColor;
  final Color? textColor;
  final String? text;

  const AppButton(
      {Key? key,
      this.fontSize,
      required this.icon,
      this.onTap,
      this.backgroundColor,
      this.IconColor,
      this.textColor,
      this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: backgroundColor),
              child: Icon(
                icon,
                size: 30,
                color: IconColor,
              ),
            ),
            text != null
                ? Text(
                    text!,
                    style: TextStyle(fontSize: 13, color: textColor),
                  )
                : Container(),
          ],
        ));
  }
}
