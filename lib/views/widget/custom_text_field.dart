import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor ,
      decoration: InputDecoration(
         hintText: 'Title',
        //   hintStyle:const TextStyle(
        //     color: KPrimaryColor,
        //   ),
          border:buildBorder (),
          enabledBorder: buildBorder(KPrimaryColor),
          focusedBorder: buildBorder(),

          ),
    );
  }
}
OutlineInputBorder buildBorder([color]){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        8,
      ),
      borderSide:  BorderSide(
          color: color ?? Colors.white)
  );

}








