import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomImageItem extends StatelessWidget {
  const CustomImageItem(
      {super.key,
      required this.image,
      required this.height,
      required this.width,
      required this.firstIconColor,
      required this.secondeIconColor,
      required this.firstIconName,
      required this.secondeIconName,
      required this.firstIconOnPressed,
      required this.secondeIconOnPressed,
      required this.firstIcon,
      required this.secondeIcon});
  final XFile image;
  final double height, width;
  final Color firstIconColor, secondeIconColor;
  final String firstIconName, secondeIconName;
  final void Function() firstIconOnPressed, secondeIconOnPressed;
  final IconData firstIcon, secondeIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 10,
          margin: const EdgeInsetsDirectional.all(10),
          clipBehavior: Clip.hardEdge,
          child: Image.network(
            image.path,
            height: height * .25,
            width: width * .25,
            fit: BoxFit.fill,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
                style: ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(firstIconColor)),
                onPressed: firstIconOnPressed,
                label: Icon(firstIcon),
                icon: Text(firstIconName)),
            TextButton.icon(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStatePropertyAll(secondeIconColor)),
                onPressed: secondeIconOnPressed,
                label: Icon(secondeIcon),
                icon: Text(secondeIconName)),
          ],
        )
      ],
    );
  }
}
