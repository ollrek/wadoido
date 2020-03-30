import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appBar() {
  return AppBar(
    elevation: 0.0,
    flexibleSpace: Container(
      padding: EdgeInsets.all(10),
      height: 120,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text('#Noidea', style: (GoogleFonts.lato(fontSize: 24))),
        ],
      ),
      decoration: BoxDecoration(color: Colors.white),
    ),
  );
}
