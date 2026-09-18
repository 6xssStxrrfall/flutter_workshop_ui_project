import 'package:flutter/material.dart';
import 'package:flutter_iot69_first_project1/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

//-----------------------------------------

void main() {
  runApp(
    FlutterIot69FirstProject1(),
  );
}

//-----------------------------------------
//แนะนำ StatefulWidget ตั้งชื่อล้อกับโปรเจค
//Classนี้เรียกใช้ Widget หลักของ App
class FlutterIot69FirstProject1 extends StatefulWidget {
  const FlutterIot69FirstProject1({super.key});

  @override
  State<FlutterIot69FirstProject1> createState() =>
      _FlutterIot69FirstProject1State();
}

class _FlutterIot69FirstProject1State extends State<FlutterIot69FirstProject1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}
