import 'package:flutter/material.dart';
import 'package:flutter_application/ui/common/tokens/colors.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "¿No tienes una cuenta ? " : "¿Ya tienes una cuenta? ",
          style: const TextStyle(color: kBrandPrimary),
        ),
        GestureDetector(
          onTap: () {
            press();
          },
          child: Text(
            login ? "Registrarse" : "Ingresar",
            style: const TextStyle(
              color: kBrandPrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
