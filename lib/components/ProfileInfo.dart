import 'package:flutter/material.dart';
import 'package:projectme/Widget/iconbutton.dart';
import 'package:projectme/sizemanager.dart';

import '../Widget/resusable.dart';

class ProfileInFo extends StatelessWidget {
  String data =
      'I’m obsessed with making cool things  on the net, interested in machine learning and web development and I’m starving to learn new stuff !';
  late bool isMobile;

  @override
  Widget build(BuildContext context) {
    isMobile = sizemanager.isMobile(context) ? true : false;
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      /// card header
      Container(
          width: double.infinity,
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Spacer(flex: 1),
            SocialValue('Friends', 22),
            SocialValue('Photos', 10),
            SocialValue('Comments', 86),
            Spacer(flex: 10),
            NormalButton(
                'Edit', Colors.white, '', Colors.white, Colors.teal[300]!),
            Spacer(flex: 1)
          ])),
      SizedBox(height: isMobile ? 20 : 50), LargeBoldTextBlack('R Swasthik'),
      SizedBox(height: 10),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.location_pin, size: 20, color: Colors.grey[400]),
            SizedBox(width: 5),
            NormalGreyText('Bangalore, Karnataka')
          ]),
      SizedBox(height: 30),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.work, size: 20, color: Colors.grey[400]),
            SizedBox(width: 5),
            NormalGreyText('IOTreeminds - Intern ')
          ]),
      SizedBox(height: 10),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.school, size: 20, color: Colors.grey[400]),
            SizedBox(width: 5),
            NormalGreyText('REVA University ')
          ]),

      /// description
      Divider(height: 30, thickness: 1, color: Colors.grey[300]),
      NormalGreyText(data),
      SizedBox(height: 10),
      TextButtons('Show more', Colors.green)
    ]));
  }

  Widget SocialValue(String label, int value) => Container(
      padding: EdgeInsets.all(5),
      height: 50,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('$value',
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 12,
                    fontWeight: FontWeight.bold)),
            Text(label,
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 12,
                    fontWeight: FontWeight.bold))
          ]));
}
