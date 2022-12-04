import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
final String text;
final Function onPressed;

  const CustomButton({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: onPressed,
        color: primaryColor,
        padding: const EdgeInsetsDirectional.all(18.0),
        child: CustomText(
          text: text,
          alignment: Alignment.center,
          color: Colors.white,

        ) ,

      ),
    );
  }
}
