
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../Constants/constants.dart';

class MyPasswordTextFormField extends GetView{
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final bool? fill;
  final Color? fillColor;
  final FontWeight? fontWeight;
  final double? width;
  final double? height;
  final Color? labelTextColor;
  final Color? hintTextColor;
  final Color? fillcolor;
  final bool obscureText;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLines;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  final void Function()? togglePasswordView;
  final TextInputType? textInputType;
  final bool? readOnly;
  const MyPasswordTextFormField(
      {super.key,
      this.maxLines,
        this.textInputType,
        this.readOnly,
        this.fillColor,
      this.contentPadding,
      this.fontWeight,
      this.controller,
        this.fill,
      this.width,
      this.height,
      this.hintText,
      this.labelText,
      this.labelTextColor,
      this.hintTextColor,
      this.fillcolor,
      required this.obscureText,
      this.validator,
      this.onTap,
      this.togglePasswordView});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width:width?? MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),

      height: height??80,
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
        obscureText:obscureText,


        decoration: InputDecoration(


          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none ,
          focusedErrorBorder:InputBorder.none ,


          contentPadding: contentPadding??EdgeInsets.fromLTRB(10, 15, 0, 15),
          suffix: GestureDetector(
            onTap: togglePasswordView,
            child:
            obscureText
                ?     Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 17, 0),

                  child: Icon(Icons.visibility_off),
                ):
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 17, 0),
              child: Icon(Icons.visibility)

            )



        ),
          filled: fill??true,

          labelStyle: GoogleFonts.montserrat(color: primaryColor,fontWeight: FontWeight.w500),

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
