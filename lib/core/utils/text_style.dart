import 'package:flutter/material.dart';

//dashboard text
class ResponsiveTextStyle extends StatelessWidget {
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final String text;

  const ResponsiveTextStyle({
    super.key,
    required this.color,
    required this.fontWeight,
    required this.fontSize,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: fontSize),
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }

  double getResponsiveFontSize(BuildContext context,
      {required double fontSize}) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;
    double lowerLimit = fontSize * .8;
    double upperLimit = fontSize * 1.2;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  double getScaleFactor(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < 600) {
      return width / 400;
    } else if (width < 900) {
      return width / 700;
    } else {
      return width / 1000;
    }
  }
}
