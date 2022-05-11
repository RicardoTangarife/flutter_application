import 'package:flutter/material.dart';
import 'package:flutter_application/ui/common/tokens/colors.dart';
import 'package:flutter_application/ui/common/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kBrandPrimary,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kBrandPrimary,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
