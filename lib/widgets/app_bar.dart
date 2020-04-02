import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appBar() {
  return AppBar(
    elevation: 0.0,
    flexibleSpace: Container(
      height: 120,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('B',
              style: (GoogleFonts.openSansCondensed(
                  fontSize: 34, ))),
          Text('ons ', style: (GoogleFonts.openSansCondensed(fontSize: 30))),
          Text('P',
              style: (GoogleFonts.openSansCondensed(
                  fontSize: 34, ))),
          Text('lans du ',
              style: (GoogleFonts.openSansCondensed(fontSize: 30))),
          Text('C',
              style: (GoogleFonts.openSansCondensed(
                  fontSize: 34, ))),
          Text('onfinement',
              style: (GoogleFonts.openSansCondensed(fontSize: 30))),
        ],
      ),
      decoration: BoxDecoration(color: Colors.white),
    ),
  );
}
