import 'package:flutter/material.dart';
import 'package:flutter_application/ui/screens/login/components/background.dart';
import 'package:flutter_application/ui/screens/signup/signup_screen.dart';
import 'package:flutter_application/ui/common/components/already_have_an_account_acheck.dart';
import 'package:flutter_application/ui/common/components/rounded_button.dart';
import 'package:flutter_application/ui/common/components/rounded_input_field.dart';
import 'package:flutter_application/ui/common/components/rounded_password_field.dart';
import 'package:flutter_application/ui/screens/home/home_screen.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "INGRESAR",
              style: TextStyle(fontWeight: FontWeight.bold),
              textScaleFactor: 1.3,
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "INGRESAR",
              press: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                    (Route<dynamic> route) => false);
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
