import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final Color? color;
  final Gradient? gradient;
  final String text;
  final TextStyle textStyle;
  final bool isTextCentered;
  final Widget? prefixIcon;
  final String? prefixImage;
  final bool isPrefixImageSvg;
  final Widget? suffixIcon;
  final VoidCallback onPressed;
  final double? borderRadius;
  final Color? borderColor;
  final Color? shadowColor;
  final double? shadowBlurRadius;
  final Offset? shadowOffset;
  final bool isOutlined;

  const CustomButton({
    super.key,
    required this.width,
    required this.height,
    this.color,
    this.gradient,
    required this.text,
    required this.textStyle,
    this.isTextCentered = true,
    this.prefixIcon,
    this.prefixImage,
    this.isPrefixImageSvg = false,
    this.suffixIcon,
    required this.onPressed,
    this.borderRadius,
    this.borderColor,
    this.shadowColor,
    this.shadowBlurRadius,
    this.shadowOffset,
    this.isOutlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width.w,
        height: height.h,
        decoration: BoxDecoration(
          color: isOutlined
              ? Colors.transparent
              : (gradient == null ? color : null),
          gradient: isOutlined ? null : gradient,
          borderRadius: BorderRadius.circular(borderRadius ?? 100),
          border: isOutlined && borderColor != null
              ? Border.all(color: borderColor!)
              : null,
          boxShadow: [
            if (!isOutlined)
              BoxShadow(
                color: shadowColor ?? const Color(0x3F000000),
                blurRadius: shadowBlurRadius ?? 8.0,
                offset: shadowOffset ?? const Offset(0, 4),
                spreadRadius: 0,
              ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (prefixIcon != null || prefixImage != null)
              Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: prefixIcon != null
                    ? prefixIcon!
                    : (isPrefixImageSvg
                        ? SvgPicture.asset(prefixImage!)
                        : Image.asset(prefixImage!)),
              ),
            Expanded(
              child: Center(
                child: Text(
                  text,
                  style: textStyle,
                ),
              ),
            ),
            if (suffixIcon != null)
              Padding(
                padding: EdgeInsets.only(right: 8.w),
                child: suffixIcon!,
              ),
          ],
        ),
      ),
    );
  }
}
