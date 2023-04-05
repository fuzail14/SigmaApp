import 'dart:io';
import 'package:flutter/material.dart';
import 'package:nofapsigma/Widgets/My%20Button/my_button.dart';
import 'package:nofapsigma/Widgets/My%20TextForm%20Field/my_textform_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:nofapsigma/Module/Signup/Controller/signup_controller.dart';
import 'package:image_picker/image_picker.dart';

import '../../../Widgets/My Password TextForm Field/my_password_textform_field.dart';
import '../../../Constants/constants.dart';

class Signup extends GetView {

  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child: GetBuilder<SignupController>(
          init: SignupController(),
            builder: (controller) {
          return Scaffold(
            resizeToAvoidBottomInset: false,

            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(children: [
                  Container(
                    decoration: const BoxDecoration(color: Colors.black),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 40,
                    child:  Center(
                      child: Text('Signup SIGMA !', style: GoogleFonts.montserrat(fontSize: 20,
                          color: Colors.white),),
                    ),
                    ),


SizedBox(height: 20,),
                  GestureDetector(
                    onTap: (){

                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 100.0,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Column(
                                children: <Widget>[
                                  const Text(
                                    'Choose Profile Photo',
                                    style: TextStyle(
                                        fontSize: 20),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      ElevatedButton.icon(
                                        style: ElevatedButton
                                            .styleFrom(
                                            backgroundColor: primaryColor),
                                        icon: const Icon(
                                          Icons.camera,
                                        ),
                                        onPressed: () {
                                          controller
                                              .getFromCamera(ImageSource.camera);
                                        },
                                        label: const Text('Camera'),
                                      ),
                                      ElevatedButton.icon(
                                        style: ElevatedButton
                                            .styleFrom(
                                            backgroundColor: primaryColor),
                                        icon: const Icon(Icons.image),
                                        onPressed: () {
                                          controller
                                              .getFromGallery(
                                              ImageSource
                                                  .gallery);
                                        },
                                        label: const Text('Gallery'),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Stack(
                      clipBehavior: Clip.none,

                      children: <Widget>[
                        FittedBox(
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                          child: CircleAvatar(

                            radius: 40.0,
                            backgroundColor: Colors.white,
                            backgroundImage: controller.imageFile == null
                                ? const AssetImage(

                                'assets/images/chad_front_view.jpg',) as ImageProvider
                                : FileImage(
                              File(controller.imageFile!.path),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 70,
                          top: 60,
                          child: const Icon(
                            Icons.camera_alt,
                            color: primaryColor,
                            size: 28,
                          ),
                        ),

                        Positioned(top: 82,
                          child: Text('Select Image',
                            style: GoogleFonts.montserrat(),),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  MyTextFormField(
                    controller: controller.firstnameController,
                    validator:                     emptyStringValidator
                      ,
                      hintText: 'First Name', labelText: 'First Name'),

                  MyTextFormField(controller: controller.lastnameController,
                      hintText: 'Last Name', labelText: 'Last Name'),
                  MyTextFormField(
                    controller: controller.userNameController,
                    validator: emptyStringValidator,
                      hintText: 'User Name', labelText: 'User Name'),

                  MyTextFormField(
                    controller: controller.emailController,
                    validator: emailValidator,
                      hintText: 'Email', labelText: 'Email'),

                  MyPasswordTextFormField(maxLines: 1,
                     controller: controller.passwordController,
                     validator: passwordValidator,
                    togglePasswordView: controller.togglePasswordView,
                      hintText: 'Password', labelText: 'Password',
                    obscureText:controller.isHidden ,),

                  MyPasswordTextFormField( maxLines: 1,
                    controller: controller.confirmPasswordController,
                    validator: passwordValidator,
                      togglePasswordView: controller.togglePasswordView,
                      hintText: 'Confirm Password',obscureText: controller.isHidden,
                      labelText: 'Confirm Password'),

                  MyButton(name: 'Signup', onPressed: () {

                    if(_formKey.currentState!.validate())

                      {
                        print("kdkd");

                      }

                  },),



                ],),
              ),
            ),);
        }));
  }
}
