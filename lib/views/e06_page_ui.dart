import 'package:flutter/material.dart';
import 'login_ui.dart';

class PasswordChangUI extends StatelessWidget {
  PasswordChangUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 120.0),

            Image.asset(
              'assets/images/img_correct.png',
              height: 75.0,
            ),

            SizedBox(height: 25.0),

            Text(
              'Password Changed!',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10.0),

            Text(
              'Your password has been changed\nsuccessfully.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.0,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),

            SizedBox(height: 25.0),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginUI(),
                  ),
                );
              },
              child: Text(
                'Back to Login',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(350.0, 50.0),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}