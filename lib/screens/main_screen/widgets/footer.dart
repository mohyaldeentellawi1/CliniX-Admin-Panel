import 'package:clinix_admin_panel/core/utils/text_style.dart';
import 'package:flutter/material.dart';

class FootterWidget extends StatelessWidget {
  const FootterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
        height: 60,
        child: Row(
          children: [
            Container(width: 18),
            const Expanded(
              flex: 6,
              child: ResponsiveTextStyle(
                  text: '2024 © Clinix.',
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
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
                              ),
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
