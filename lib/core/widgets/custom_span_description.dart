import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomSpanDescription extends StatelessWidget {
  const CustomSpanDescription({super.key, required this.desc});
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(10),
      decoration: BoxDecoration(
          color: AppColor.lightred,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColor.selecteColor)),
      child: RichText(
        text: TextSpan(text: desc),
      ),
    );
  }
}
