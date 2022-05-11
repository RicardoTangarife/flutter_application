import 'package:flutter/material.dart';
import 'package:flutter_application/ui/common/tokens/colors.dart';
import 'package:flutter_application/ui/common/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kBrandPrimary,
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kBrandPrimary,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kBrandPrimary,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
