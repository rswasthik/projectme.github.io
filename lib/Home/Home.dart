import 'package:flutter/material.dart';
import 'package:projectme/components/HeaderPanel.dart';
import 'package:projectme/sizemanager.dart';

import '../components/FooterPanel.dart';
import '../components/ProfilePanle.dart';
import '../components/TopBackground.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        /// background color
        backgroundColor: Color(0xffdde9e9),

        /// if is it Mobile. don't use SafeArea
        body: sizemanager.isMobile(context)
            ? Stack(children: [
                TopBackground(),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [HeaderPanel(), ProfilePanle(), FooterPanel()]),
                )
              ])
            : SafeArea(
                child: Stack(children: [
                TopBackground(),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [HeaderPanel(), ProfilePanle(), FooterPanel()]),
                )
              ])));
  }
}
