import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wadoido/widgets/footer.dart';
import 'package:wadoido/widgets/main_content.dart';
import 'package:wadoido/widgets/app_bar.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BPC',
        home: MainPage(),
        theme: ThemeData(
            textTheme: GoogleFonts.josefinSansTextTheme(
          Theme.of(context).textTheme,
        )));
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      body: MainContent(),
      appBar: appBar(),
      bottomNavigationBar: footer(),
    );
  }
}
