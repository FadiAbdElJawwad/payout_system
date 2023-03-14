import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    required this.text,
    required this.onTap,
    required this.BackgroundColor,
    required this.TextColor,
    this.width = double.maxFinite,
    Key? key,
  }) : super(key: key);
  final String text;
  final double width;
  final  BackgroundColor;
  final  TextColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor:  BackgroundColor,
        // shape: const StadiumBorder(),
        fixedSize: Size(width, 44),
      ),
      child:
      Text(text, style:  TextStyle(fontSize: 20, color: TextColor)),
    );
  }
}
