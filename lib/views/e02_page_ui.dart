import 'package:flutter/material.dart';
import 'package:flutter_iot69_first_project1/views/login_ui.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 120.0,
            ),
            Image.asset(
              'assets/images/img_dev1.png',
              height: 250.5,
            ),
            SizedBox(
              height: 25.0,
            ),
            Image.asset(
              'assets/images/img_dev2.png',
              height: 80.0,
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SAU',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[800],
                  ),
                ),
                Text(
                  'Developer',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: const Color.fromARGB(255, 56, 36, 36),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
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
                'Login',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(380, 75),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10.0)),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: OutlinedButton.styleFrom(
                fixedSize: Size(380, 75),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10.0)),
              ),
            ),
            SizedBox(
              height: 150.0,
            ),
            Text(
              'Created By Pued Thongkhien',
              style: TextStyle(
                color: const Color.fromARGB(255, 48, 59, 163),
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'มหาวิทยาลัยเอเชียอาคเนย์',
              style: TextStyle(
                color: const Color.fromARGB(255, 48, 59, 163),
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
