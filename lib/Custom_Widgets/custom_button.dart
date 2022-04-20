import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String textButton;
  // ignore: prefer_typing_uninitialized_variables
  final buttonTap;
  final double width;
  final double height;
  final Color color;
  final Color colorText;

  const CustomButton(
      {Key? key,
      required this.textButton,
      required this.buttonTap,
      this.width = 200,
      this.height = 100,
      this.color = Colors.amberAccent,
      this.colorText = Colors.white})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: widget.buttonTap,
        child: Container(
          width: widget.width,
          height: widget.height,
          color: widget.color,
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Text(
              widget.textButton,
              style: TextStyle(
                  fontSize: 20,
                  color: widget.colorText,
                  decoration: TextDecoration.none),
            ),
          ),
        ),
      ),
    );
  }
}
