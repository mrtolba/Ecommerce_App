import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButtonSocial extends StatelessWidget {
final String text;
final String imageName;
final Function onPressed;

   const CustomButtonSocial({this.text, this.imageName, this.onPressed });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade50,
      ),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: onPressed,

        padding: const EdgeInsetsDirectional.all(18.0),
        child: Row(
          children: [
            Image.asset(
              imageName,
            ),
            const SizedBox(
              width: 90.0,
            ),
            CustomText(
              text: text,
            ),
          ],
        ),

      ),
    );
  }
}
