import 'package:flutter/material.dart';
import 'e01_page_ui.dart';

class E06PageUI extends StatefulWidget {
  E06PageUI({super.key});

  @override
  State<E06PageUI> createState() => _E06PageUIState();
}

class _E06PageUIState extends State<E06PageUI> {
  bool hide1 = true;
  bool hide2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 28),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios_new, size: 17),
                ),
                SizedBox(height: 12),
                Text(
                  'Create New Password',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  'Create a new password for your account.',
                  style: TextStyle(fontSize: 9, color: Color(0xFF777777)),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: hide1,
                  decoration: _decoration('New Password').copyWith(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hide1 = !hide1;
                        });
                      },
                      icon: Icon(
                        hide1
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        size: 17,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  obscureText: hide2,
                  decoration: _decoration('Confirm Password').copyWith(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hide2 = !hide2;
                        });
                      },
                      icon: Icon(
                        hide2
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        size: 17,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => E01PageUI(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFF9D00),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text('Submit', style: TextStyle(fontSize: 9)),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

InputDecoration _decoration(String hint) {
  return InputDecoration(
    hintText: hint,
    hintStyle: TextStyle(fontSize: 8, color: Color(0xFFAAAAAA)),
    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    isDense: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: BorderSide(color: Color(0xFFD8D8D8)),
    ),
  );
}
