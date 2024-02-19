import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class AuthFeild extends StatelessWidget {
  const AuthFeild(
      {super.key, required this.obscure, required this.hint, this.suffixIcon});
  final bool obscure;
  final String hint;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        obscureText: obscure,
        initialValue: "",
        style: const TextStyle(
          fontSize: 14,
          color: AppColor.hintcolor,
          fontWeight: FontWeight.w400,
        ),
        autocorrect: true,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          isDense: true,
          hintText: hint,
          hintStyle: const TextStyle(
              color: AppColor.hintcolor,
              fontSize: 14,
              fontWeight: FontWeight.w400),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.borders, width: 1),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.borders),
          ),
        ),
      ),
    );
  }
}
