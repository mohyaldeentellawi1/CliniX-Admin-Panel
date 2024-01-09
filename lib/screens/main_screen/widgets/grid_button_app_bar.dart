import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class GridButtonAppBar extends StatelessWidget {
  const GridButtonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(
        minHeight: 50,
        maxHeight: 325,
        minWidth: 300,
        maxWidth: 330,
      ),
      itemBuilder: (context) => [
        const PopupMenuItem(
          padding: EdgeInsets.only(left: 30, top: 25, bottom: 20, right: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Gridbutton(
                image: "assets/image/appbar/github.png",
                text: "GitHub",
              ),
              Gridbutton(
                image: "assets/image/appbar/bitbucket.png",
                text: "BitBucket",
              ),
              Gridbutton(
                image: "assets/image/appbar/dribbble.png",
                text: "Dribbble",
              ),
            ],
          ),
        ),
        const PopupMenuItem(
          padding: EdgeInsets.only(left: 25, top: 16, bottom: 25, right: 30),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Gridbutton(
                image: "assets/image/appbar/dropbox.png",
                text: "DropBox",
              ),
              Gridbutton(
                image: "assets/image/appbar/mail_chimp.png",
                text: "Mail Chimp",
              ),
              Gridbutton(
                image: "assets/image/appbar/slack.png",
                text: "   Slack   ",
              ),
            ],
          ),
        ),
      ],
      icon: const Icon(Icons.grid_view_outlined, color: AppColor.black),
      offset: const Offset(0, 56),
    );
  }
}

class Gridbutton extends StatelessWidget {
  final String image;
  final String text;

  const Gridbutton({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          fit: BoxFit.contain,
          width: 28,
          height: 24,
        ),
        Container(height: 8),
        Text(
          text,
          style: const TextStyle(
              fontSize: 13,
              color: AppColor.lightgrey,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
