import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final Icon iconImage;
  final String textHint;
  final String textLabel;
  final bool obscureText;

  const CustomTextField({
    Key? key,
    required this.textHint,
    required this.textLabel,
    required this.iconImage,
    this.obscureText = false,
    required TextEditingController controller,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: TextFormField(
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        icon: widget.iconImage,
        hintText: widget.textHint,
        labelText: widget.textLabel,
      ),
      onSaved: (String? value) {
        // This optional block of code can be used to run
        // code when the user saves the form.
      },
    ));
  }
}
