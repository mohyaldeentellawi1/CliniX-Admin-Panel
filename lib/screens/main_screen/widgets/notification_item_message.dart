import 'package:flutter/material.dart';

class NotifcationItemMessage extends StatelessWidget {
  final dynamic networkImage;
  final String name;
  final String message;
  final String time;
  const NotifcationItemMessage({
    super.key,
    required this.networkImage,
    required this.name,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(shape: BoxShape.circle),
          height: 30,
          width: 30,
          child: Image.asset(networkImage, fit: BoxFit.cover),
        ),
        Container(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF313533)),
            ),
            Container(height: 5),
            SizedBox(
              width: width < 325 ? 190 : 230,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      message,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF2C302E),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.watch_later_outlined, size: 15),
                Container(width: 4),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF2C302E),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
