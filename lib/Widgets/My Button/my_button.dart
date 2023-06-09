import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Constants/constants.dart';
class MyButton extends GetView {
  final OutlinedBorder? outlinedBorder;
  final double? height;
  final double? width;
  final double? elevation;
  final double? fontSize;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final double? border;
  final String name;
  final Color? color;
  final FontStyle? fontStyle;
  final Color? textColor;
  final int? maxLines;
  final void Function()? onPressed;

  const MyButton

  (
  {super.key,
  this.outlinedBorder,
  this.fontStyle,
  this.elevation,
  this.fontWeight,
  this.letterSpacing,
  this.fontSize,
  this.textColor,
  this.height,
  this.width,
  this.border,
  required this.name,
  this.color,
  this.maxLines,
  this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width?? MediaQuery.of(context).size.width*0.8,
      height: height??80,
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
            elevation:elevation
                ??5,
            shape: outlinedBorder
                ?? RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(border ??14.0)),
            backgroundColor: color??primaryColor),
        child: Text(
          name,
          maxLines: maxLines??1,
          style: GoogleFonts.ubuntu(
              color: textColor??Colors.white,
              fontWeight: fontWeight,
              letterSpacing: letterSpacing,
              fontStyle: fontStyle,
              fontSize: fontSize),
        ),
        onPressed: onPressed,
      ),
    );
  }
}

