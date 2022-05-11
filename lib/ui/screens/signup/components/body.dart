import 'package:flutter/material.dart';

import 'package:flutter_application/ui/screens/login/login_screen.dart';
import 'package:flutter_application/ui/screens/signup/components/background.dart';
import 'package:flutter_application/ui/screens/signup/components/or_divider.dart';
import 'package:flutter_application/ui/screens/signup/components/social_icon.dart';
import 'package:flutter_application/ui/common/components/rounded_button.dart';
import 'package:flutter_application/ui/common/components/rounded_input_field.dart';
import 'package:flutter_application/ui/common/components/rounded_password_field.dart';
import 'package:flutter_application/ui/common/components/already_have_an_account_acheck.dart';
import 'package:flutter_application/ui/screens/home/home_screen.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.08),
            const Text(
              "REGISTRARSE",
              style: TextStyle(fontWeight: FontWeight.bold),
              textScaleFactor: 1.3,
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "REGISTRARSE",
              press: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                    (Route<dynamic> route) => false);
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
            ),
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
