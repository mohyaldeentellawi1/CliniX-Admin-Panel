import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/theme_controller.dart';
import '../utils/colors.dart';

class CustomSpanDescription extends StatelessWidget {
  const CustomSpanDescription({super.key, required this.desc});
  final String desc;
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return Container(
      padding: const EdgeInsetsDirectional.all(10),
      decoration: BoxDecoration(
          color: theme.isDarkMode ? AppColor.lightyellow : AppColor.lightred,
          borderRadius: BorderRadius.circular(12)),
      child: RichText(
        text: TextSpan(text: desc),
      ),
    );
  }
}
