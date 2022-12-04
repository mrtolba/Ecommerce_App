import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/core/viewmodel/auth_view_model.dart';
import 'package:ecommerce_app/view/widgets/custom_button.dart';
import 'package:ecommerce_app/view/widgets/custom_button_social.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:ecommerce_app/view/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // login screen
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20.0,
            end: 20.0,
            top: 50.0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: 'Welcome,',
                  fontSize: 30.0,
                  ),
                  CustomText(text: 'Sign Up',
                  fontSize: 18.0,
                  color: primaryColor,
                  ),
                ],
              ),
               const SizedBox(
                 height: 10.0,
               ),
              CustomText(
               text:'Sign in to Continue',
                color: Colors.grey,
                fontSize: 14.0,
              ),
              const SizedBox(
                height: 30.0,
              ),
              CustomTextFormField(
                validator: (String value){},
                onSave: (String value){},
                text: 'Email',
                hint: 'dfghjnbvg@gmail.com',
              ),
              const SizedBox(
                height: 40.0,
              ),
              CustomTextFormField(
                validator: (String value){},
                onSave: (String value){},
                text: 'Password',
                hint: '*********',
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomText(text:'Forget Password?',
              fontSize: 14.0,
              alignment: Alignment.topRight,
              ),
              const SizedBox(
                height: 20.0,
              ),
             CustomButton(
               text: 'SIGN IN',
               onPressed: (){},
             ),
              const SizedBox(
                height: 20.0,
              ),
              CustomText(
                text: '-OR-',
                alignment: Alignment.center,
              ),
              const SizedBox(
                height: 30.0,
              ),
               CustomButtonSocial(
                text: 'Sign In With Google',
                imageName:'assets/images/google.png',
                 onPressed: (){
                  controller.googleSignInMethod();
                 },
              ),
              const SizedBox(
                height: 20.0,
              ),
               CustomButtonSocial(
                text: 'Sign In With Facebook',
                imageName:'assets/images/facebook.png',
                onPressed: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
