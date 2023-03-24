import 'package:flutter/material.dart';
import 'CustomColor.dart';

class CustomStyleButton{
  static InputDecoration textFieldStyle({String labelTextStr="",String hintTextStr=""}) {return InputDecoration(

    labelText: labelTextStr,
    hintText: hintTextStr,
    hintStyle: const TextStyle(color: Colors.white),
    labelStyle: const TextStyle(color: Colors.white),
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: CustomColor.geloColor),
        borderRadius: BorderRadius.circular(60)),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(60)),
  );}
  static InputDecoration textFieldStyle2({String labelTextStr="",String hintTextStr=""}) {return InputDecoration(
    labelText: labelTextStr,
    hintText: hintTextStr,
    hintStyle: const TextStyle(color: Colors.white),
    labelStyle: const TextStyle(color: Colors.white),
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: CustomColor.geloColor),
        borderRadius: BorderRadius.circular(60)),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(60)),
  );}
}
