import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Menu extends StatelessWidget {
  final String text;
  final dynamic color;
  final VoidCallback onTap;
  const Menu({
    super.key,
    required this.text,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 45,
        child: Row(
          children: [
            Container(width: 53),
            Expanded(
              child: Text(
                text.tr,
                style: TextStyle(
                    overflow: TextOverflow.clip,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5,
                    color: color),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
