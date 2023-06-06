import 'package:flutter/material.dart';
import 'package:projectme/sizemanager.dart';

import '../Widget/iconbutton.dart';

class HeaderPanel extends StatelessWidget {
  late bool isMobile;
  @override
  Widget build(BuildContext context) {
    isMobile = sizemanager.isMobile(context) ? true : false;
    double _width = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: _width / 10, vertical: isMobile ? 30 : 10),
        child: isMobile
            ? Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [LeftSidePanel(), RightSidePanle()],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [LeftSidePanel(), RightSidePanle()],
              ));
  }

  Widget LeftSidePanel() =>
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        /// You can use your logo here. I using a text.
        Text('Timeless',
            style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w800,
                letterSpacing: .5)),

        isMobile ? Spacer(flex: 1) : SizedBox(width: 50),
        IconLabelButtons('DOCS', 'assets/icon/document.svg')
      ]);

  Widget RightSidePanle() =>
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        LogoButton('assets/icon/facebook.svg'),
        LogoButton('assets/icon/twitter.svg'),
        LogoButton('assets/icon/linkedin.svg'),
        NormalButton('DOWNLOAD', Colors.grey[700]!, 'assets/icon/download.png',
            Colors.grey[700]!, Colors.white)
      ]);
}
