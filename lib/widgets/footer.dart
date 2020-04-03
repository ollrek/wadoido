import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Widget footer() {
  return Container(
      padding: EdgeInsets.only(bottom: 6),
      height: 100,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.topCenter,
              colors: <Color>[Colors.white, Colors.white.withOpacity(0.0)])),
      child: LayoutBuilder(builder: (context, constraints) {
        return Column(
          children: <Widget>[
            constraints.maxWidth > 400 ? Text(
                "Plans cools par et pour des gens cools à la maison. Restez chez vous !",
                textAlign: TextAlign.center) : Container(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                constraints.maxWidth > 400
                    ? GestureDetector(
                        child: Row(children: <Widget>[
                          Text('par '),
                          Text("@ollrek",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.lightBlue))
                        ]),
                        onTap: () {
                          launch("//twitter.com/ollrek");
                        })
                    : Container(),
                Row(
                  children: <Widget>[
                    Text("Faites-nous passer vos bons plans"),
                    SizedBox(width: 10),
                    GestureDetector(
                        child: FaIcon(FontAwesomeIcons.solidEnvelope),
                        onTap: () {
                          launch("mailto:ljourdes.dev@gmail.com");
                        }),
                    SizedBox(width: 8),
                    GestureDetector(
                        child: FaIcon(FontAwesomeIcons.twitter),
                        onTap: () {
                          launch("//twitter.com/ollrek");
                        }),
                  ],
                )
              ],
            )
          ],
          mainAxisAlignment: MainAxisAlignment.end,
        );
      }));
}
