import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:clinix_admin_panel/screens/main_screen/widgets/notification_count_icon.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/colors.dart';
import 'notification_item.dart';
import 'notification_item_message.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(
        minHeight: 50,
        maxHeight: 330,
        minWidth: 250,
        maxWidth: 310,
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Row(
                children: [
                  ResponsiveTextStyle(
                      text: "Notifications",
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF313533)),
                  Spacer(),
                  ResponsiveTextStyle(
                      text: "Unread",
                      fontSize: 11.2,
                      color: Color(0xFF2C302E),
                      fontWeight: FontWeight.w400)
                ],
              ),
              Container(height: 30),
              const NotifcationItemMessage(
                networkImage: "assets/image/avatar2.png",
                name: "James Lemire",
                message: "It will seem like simplified English,",
                time: "1 hour ago",
              ),
            ],
          ),
        ),
        PopupMenuItem(
          padding: EdgeInsets.only(
              left: 16.0, right: width > 325 ? 16.0 : 0, top: 10.0, bottom: 16),
          child: const Column(
            children: [
              NotifcationItem(
                icon: Icons.shopping_cart_outlined,
                name: "Your order is placed",
                message: "If serveral language coalesce the grammar",
                time: "3 min ago",
                backgroundColor: AppColor.selecteColor,
              ),
            ],
          ),
        ),
        PopupMenuItem(
          padding: EdgeInsets.only(
              left: 16.0, right: width > 325 ? 16.0 : 0, top: 10.0, bottom: 16),
          child: const Column(
            children: [
              NotifcationItem(
                icon: Icons.check_circle_outline_outlined,
                name: "Your item is shipped",
                message: "If serveral language coalesce the grammar",
                time: "3 min ago",
                backgroundColor: AppColor.darkGreen,
              ),
            ],
          ),
        ),
        PopupMenuItem(
          padding: EdgeInsets.only(
              left: 16.0, right: width > 325 ? 16.0 : 0, top: 10.0, bottom: 16),
          child: const NotifcationItemMessage(
            networkImage: "assets/image/avatar4.png",
            name: "Salena Layfield",
            message: "As a skeptical Cambridge friend of mine occidental",
            time: "1 hour ago",
          ),
        ),
      ],
      icon: const NotificationCountIcon(
          text: "5", iconData: Icons.notifications_none_rounded),
      offset: const Offset(0, 56),
    );
  }
}
