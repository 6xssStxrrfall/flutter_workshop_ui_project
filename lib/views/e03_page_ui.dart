import 'package:flutter/material.dart';
import 'forgot_ui.dart';

class LoginUI extends StatefulWidget {
  LoginUI({super.key});

  @override
  State<LoginUI> createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return _AuthPage(
      title: 'Welcome to SAU! Glad\nto see you, Again!',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _FieldLabel(''),

          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: _decoration('Enter your email'),
          ),

          SizedBox(height: 9),

          TextField(
            obscureText: _hidePassword,
            decoration: _decoration('Enter your password').copyWith(
              suffixIcon: IconButton(
                icon: Icon(
                  _hidePassword
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  size: 16,
                ),
                onPressed: () {
                  setState(() {
                    _hidePassword = !_hidePassword;
                  });
                },
              ),
            ),
          ),

          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ForgotUI(),
                  ),
                );
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 8,
                  color: Color(0xFF555555),
                ),
              ),
            ),
          ),

          _darkButton('Login', () {}),

          SizedBox(height: 12),

          Center(
            child: Text(
              'Or Login with',
              style: TextStyle(
                fontSize: 9,
                color: Color(0xFF666666),
              ),
            ),
          ),

          SizedBox(height: 9),

          Row(
            children: [
              _social('assets/images/img_facebook.png'),
              SizedBox(width: 7),
              _social('assets/images/img_google.png'),
              SizedBox(width: 7),
              _social('assets/images/img_apple.png'),
            ],
          ),

          SizedBox(height: 62),

          Center(
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 8,
                  color: Color(0xFF555555),
                ),
                children: [
                  TextSpan(
                    text: "Don't have an account? ",
                  ),
                  TextSpan(
                    text: 'Register Now',
                    style: TextStyle(
                      color: Color(0xFF00AEEF),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _social(String asset) {
    return Expanded(
      child: SizedBox(
        height: 38,
        child: OutlinedButton(
          onPressed: () {},
          child: Image.asset(
            asset,
            height: 17,
          ),
        ),
      ),
    );
  }
}

class _AuthPage extends StatelessWidget {
  final String title;
  final Widget child;

  _AuthPage({
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 360,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _backButton(context),

                  SizedBox(height: 17),

                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      height: 1.05,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF20242C),
                    ),
                  ),

                  SizedBox(height: 18),

                  child,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _backButton(BuildContext context) {
  return IconButton(
    onPressed: () {
      Navigator.pop(context);
    },
    icon: Icon(
      Icons.chevron_left,
      size: 25,
    ),
  );
}

class _FieldLabel extends StatelessWidget {
  final String text;

  _FieldLabel(this.text);

  @override
  Widget build(BuildContext context) {
    if (text.isEmpty) {
      return SizedBox();
    }

    return Text(text);
  }
}

InputDecoration _decoration(String hint) {
  return InputDecoration(
    hintText: hint,
    hintStyle: TextStyle(
      fontSize: 8,
      color: Color(0xFF9BA0A8),
    ),
    contentPadding: EdgeInsets.symmetric(
      horizontal: 11,
      vertical: 12,
    ),
    isDense: true,
    filled: true,
    fillColor: Color(0xFFF8F8F8),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        color: Color(0xFFD3D6DB),
      ),
    ),
  );
}

Widget _darkButton(String text, VoidCallback onPressed) {
  return SizedBox(
    width: double.infinity,
    height: 40,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF20242C),
        foregroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 9),
      ),
    ),
  );
}