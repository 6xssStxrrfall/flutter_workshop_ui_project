import 'package:flutter/material.dart';
import 'password_chang_ui.dart';

class NewPasswordUI extends StatefulWidget {
  NewPasswordUI({super.key});

  @override
  State<NewPasswordUI> createState() => _NewPasswordUIState();
}

class _NewPasswordUIState extends State<NewPasswordUI> {
  bool hide1 = true;
  bool hide2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50.0),

            Align(
              alignment: Alignment.centerLeft,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  size: 20.0,
                ),
                style: OutlinedButton.styleFrom(
                  fixedSize: Size(60.0, 50.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30.0),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'Create new password',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            SizedBox(height: 10.0),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'Your new password must be unique from those\n'
                  'previously used.',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: const Color.fromARGB(255, 247, 247, 247),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30.0),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                obscureText: hide1,
                decoration: InputDecoration(
                  hintText: 'New Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        hide1 = !hide1;
                      });
                    },
                    icon: Icon(
                      hide1
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 15.0),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                obscureText: hide2,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        hide2 = !hide2;
                      });
                    },
                    icon: Icon(
                      hide2
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20.0),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PasswordChangUI(),
                  ),
                );
              },
              child: Text(
                'Reset Password',
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