import 'package:famlikadev_logo/homepage/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'base_button.dart';

class CustomOutlinedButton extends BaseButton {
  CustomOutlinedButton(
      {Key? key,
      this.decoration,
      this.leftIcon,
      this.rightIcon,
      this.label,
      VoidCallback? onPressed,
      ButtonStyle? buttonStyle,
      TextStyle? buttonTextStyle,
      bool? isDisabled,
      Alignment? alignment,
      double? height,
      double? width,
      EdgeInsets? margin,
      required String text})
      : super(
            text: text,
            onPressed: onPressed,
            buttonStyle: buttonStyle,
            isDisabled: isDisabled,
            buttonTextStyle: buttonTextStyle,
            height: height,
            alignment: alignment,
            width: width,
            margin: margin);
  final BoxDecoration? decoration;
  final Widget? leftIcon;
  final Widget? rightIcon;
  final Widget? label;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildOutlinedButtonWidget)
        : buildOutlinedButtonWidget;
  }

  Widget get buildOutlinedButtonWidget => Container(
        height: this.height ?? 40,
        width: this.width ?? double.maxFinite,
        margin: margin,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(10.0), // Adjust the radius as needed
            ),
            side: BorderSide(
              color: Colors.grey, // Adjust the color as needed
              width: 1,
            ),
          ),
          onPressed: isDisabled ?? false ? null : onPressed ?? () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              leftIcon ?? const SizedBox.shrink(),
              Text(
                text,
                style: buttonTextStyle ?? theme.textTheme.bodyMedium,
              ),
              rightIcon ?? SizedBox.shrink()
            ],
          ),
        ),
      );
}
