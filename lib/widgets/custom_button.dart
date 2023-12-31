import 'package:animation_wrappers/animations/faded_scale_animation.dart';
import 'package:flutter/material.dart';
import 'package:shyp/constants/colors.dart';
import 'package:shyp/constants/fonts.dart';
import 'package:shyp/constants/textstyles.dart';

class CustomButton extends StatelessWidget {
  final String? label;
  final Widget? icon;
  final double? iconGap;
  final Function? onTap;
  final Color? color;
  final Color? textColor;
  final double? padding;
  final double? radius;
  final Widget? trailing;
  final double? textSize;
  final Color? borderColor;

  const CustomButton({
    Key? key,
    this.label,
    this.icon,
    this.iconGap,
    this.onTap,
    this.color,
    this.textColor,
    this.padding,
    this.radius,
    this.trailing,
    this.textSize,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadedScaleAnimation(
      scaleDuration: const Duration(milliseconds: 600),
      child: GestureDetector(
        onTap: onTap as void Function()?,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 8),
            border: Border.all(
                color: borderColor ?? Colors.transparent, width: 1.0),
            color: color ?? ApplicationColors.primaryColor,
          ),
          padding: EdgeInsets.all(padding ?? (icon != null ? 16.0 : 18.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon ?? const SizedBox.shrink(),
              icon != null
                  ? SizedBox(width: iconGap ?? 20)
                  : const SizedBox.shrink(),
              Text(
                label ?? 'Next',
                textAlign: TextAlign.center,
                style: TextStyles.h2.copyWith(
                    color: textColor ?? Colors.white,
                    fontSize: textSize ?? FontSize.M),
              ),
              trailing != null ? const Spacer() : const SizedBox.shrink(),
              trailing ?? const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
