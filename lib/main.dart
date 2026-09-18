import 'package:flutter/material.dart';
import 'views/e01_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(FlutterWorkshopUIProject());
}

class FlutterWorkshopUIProject extends StatelessWidget {
  FlutterWorkshopUIProject({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: E01PageUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}
