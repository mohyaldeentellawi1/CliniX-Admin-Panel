import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class FootterWidget extends StatelessWidget {
  const FootterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
        color: AppColor.mainbackground,
        height: 60,
        child: Row(
          children: [
            Container(width: 18),
            const Expanded(
              flex: 6,
              child: Text(
                "2024 © Clinix.",
                style: TextStyle(
                    overflow: TextOverflow.clip,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.lightdark),
              ),
            ),
            const Spacer(),
            width > 570
                ? Expanded(
                    flex: 0,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: RichText(
                        text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '© www.clinix.com',
                              style: TextStyle(
                                  overflow: TextOverflow.clip,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.selecteColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : Container(),
            Container(width: 19),
          ],
        ));
  }
}
