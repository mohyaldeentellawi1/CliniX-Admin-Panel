import 'package:flutter/material.dart';

import 'wallets.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold(
      {super.key,
      required this.width,
      required this.textL,
      required this.texti,
      required this.textii,
      required this.webTabletViewWidget,
      required this.mobileWidget});
  final double width;
  final String textL, texti, textii;
  final Widget webTabletViewWidget;
  final Widget mobileWidget;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (width > 600)
          Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: RowTitel(
                textL: textL,
                texti: texti,
                textii: textii,
              ))
        else
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ColumnTitel(
              textL: textL,
              texti: texti,
              textii: textii,
            ),
          ),
        if (width > 1000) webTabletViewWidget else mobileWidget
      ],
    );
  }
}
