import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hint,this.maxLines = 1});
  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor ,
      maxLines: maxLines,
      decoration: InputDecoration(
         hintText: hint,
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








