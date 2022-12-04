import 'package:ecommerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
 final Function onSave;
 final Function validator;
 final String text;
 final String hint;

  const CustomTextFormField({this.onSave, this.validator, this.text, this.hint});


  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Column(
        children: [
          CustomText(
            text: text,
            fontSize: 14.0,
            color: Colors.grey.shade900,
          ),
          TextFormField(
            validator:validator,
            onSaved: onSave,
            decoration: InputDecoration(
              hintText:hint,
              hintStyle: const TextStyle(
                color: Colors.black,
              ),
              fillColor: Colors.white,
            ),

          ),
        ],
      ),
    );
  }
}
