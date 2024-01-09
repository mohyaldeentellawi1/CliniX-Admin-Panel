import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class ProfileInAppBar extends StatelessWidget {
  const ProfileInAppBar({super.key, required this.width});

  final double width;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(
        minHeight: 50,
        maxHeight: 128,
        minWidth: 160,
        maxWidth: 165,
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          onTap: () {
            // controller.index.value = 9;
          },
          height: 35,
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              const Icon(Icons.face, size: 15),
              Container(width: 5),
              const Text(
                "Profile",
                style: TextStyle(
                  fontSize: 13.5,
                  color: AppColor.black,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        PopupMenuItem(
          value: 'lock',
          height: 35,
          padding: const EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              const Icon(Icons.lock, size: 15),
              Container(width: 5),
              const Text(
                "Lock Screen",
                style: TextStyle(
                  fontSize: 13.5,
                  color: AppColor.black,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        PopupMenuItem(
          value: 'logout',
          height: 38,
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 4.0),
                child: Divider(color: AppColor.borders, thickness: 1.0),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23.0, bottom: 8.0),
                child: Row(
                  children: [
                    const Icon(Icons.logout, size: 15),
                    Container(width: 5),
                    const Text(
                      "Logout",
                      style: TextStyle(
                        fontSize: 13.5,
                        color: AppColor.black,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
      onSelected: (value) {
        switch (value) {
          case 'lock':
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (_) => LockScreen()));
            break;
          case 'logout':
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (_) => Logout()));
            break;
        }
      },
      offset: const Offset(0, 72),
      child: width > 1200
          ? Container(
              width: 148,
              height: 72,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.boxborder),
                  color: AppColor.selecteColor.withOpacity(.06)),
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 10),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/image/profile.png",
                      fit: BoxFit.cover,
                      height: 35,
                      width: 35,
                    ),
                    Container(width: 6),
                    const Expanded(
                      child: Text(
                        "Shawn Lapid",
                        style: TextStyle(
                            fontSize: 13.5,
                            color: AppColor.black,
                            fontWeight: FontWeight.w500),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(width: 10),
                    const Icon(Icons.keyboard_arrow_down_rounded, size: 15)
                  ],
                ),
              ),
            )
          : Container(
              width: 70,
              height: 72,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.boxborder),
                  color: AppColor.selecteColor.withOpacity(.06)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset(
                      "assets/image/profile.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
