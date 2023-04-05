import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../Constants/constants.dart';
class MyTextFormField extends GetView {
  final TextEditingController? controller;
  final String? hintText;
  final FontWeight? fontWeight;
  final double? width;
  final double? height;
  final bool? fill;

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final double? fontSize;
  final String? labelText;
  final int? maxLines;
  final Color? labelTextColor;
  final Color? hintTextColor;
  final Color? fillColor;
  final TextInputType? textInputType;
  final bool? readOnly;

  final String? Function(String?)? validator;
  final void Function()? onTap;
  const MyTextFormField(
      {super.key,


      this.maxLines,
        this.readOnly,
        this.textInputType,
      this.contentPadding,
      this.prefixIcon,
      this.suffixIcon,
      this.fontWeight,
      this.fill,
      this.fontSize,
      this.onTap,
      this.width,
      this.height,
      this.controller,
      this.fillColor,
      this.validator,
      required this.hintText,
      this.labelTextColor,
      required this.labelText,
      this.hintTextColor,

      });

  Widget build(BuildContext context) {
    return Container(
      
      width:width?? MediaQuery.of(context).size.width * 0.8,

      height: height??80,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
      child: TextFormField(

    style: GoogleFonts.montserrat(),
        keyboardType: textInputType,
        textAlign: TextAlign.left,
        onTap: onTap,
        validator: validator,
        maxLines: maxLines??1,
        controller: controller,
        cursorColor: primaryColor,
        readOnly:readOnly??false ,
        decoration: InputDecoration(
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none ,
          focusedErrorBorder:InputBorder.none ,


          labelStyle: GoogleFonts.montserrat(color: primaryColor,fontWeight: FontWeight.w500),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,

          contentPadding: contentPadding??EdgeInsets.fromLTRB(10, 15, 0, 15),

          filled: fill??true,



          hintStyle: GoogleFonts.montserrat(
           fontWeight: FontWeight.w400,
            color:hintTextColor??HexColor("#555555"),
          ),
          hintText: hintText,
          labelText: labelText,
          fillColor: fillColor??HexColor('#EEEEEE'),

        ),
      ),
    );
  }

}
