import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nofapsigma/Module/Login/Controller/login_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:nofapsigma/Module/Login/Controller/login_controller.dart';

import '../../../Constants/constants.dart';
import '../../../Routes/set_routes.dart';
import '../../../Widgets/My Button/my_button.dart';
import '../../../Widgets/My Password TextForm Field/my_password_textform_field.dart';
import '../../../Widgets/My TextForm Field/my_textform_field.dart';

class Login extends StatelessWidget {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GetBuilder<LoginController>(
            init: LoginController(),
            builder: (controller) {
              return Scaffold(
                resizeToAvoidBottomInset: false,
                backgroundColor: Colors.white,
                body: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(color: Colors.black),
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          child: Center(
                            child: Text(
                              'Login SIGMA !',
                              style: GoogleFonts.montserrat(
                                  fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Text(
                          'Welcome back \nSigma 🗿',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold, fontSize: 30),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                            height: 300,
                            child: Image.asset('assets/images/sigma_logo.png')),
                        SizedBox(
                          height: 30,
                        ),
                        MyTextFormField(
                            controller: controller.emailController,
                            validator: emailValidator,
                            hintText: 'Email',
                            labelText: 'Email'),
                        MyPasswordTextFormField(
                          maxLines: 1,
                          controller: controller.passwordController,
                          validator: passwordValidator,
                          togglePasswordView: controller.togglePasswordView,
                          hintText: 'Password',
                          labelText: 'Password',
                          obscureText: controller.isHidden,
                        ),
                        MyButton(
                          name: 'Login',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Get.offAndToNamed(homescreen);
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
