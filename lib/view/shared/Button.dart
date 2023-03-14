import 'package:flutter/material.dart';

class Button extends StatelessWidget {
   Button({
    required this.text,
    required this.onTap,
    required this.BackgroundColor,
    required this.TextColor,
    this.width = double.maxFinite,
    this.sizeText =20,
    Key? key,
  }) : super(key: key);
  final String text;
  final double width;
  final  BackgroundColor;
  final  TextColor;
  final Function()? onTap;
  double sizeText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor:  BackgroundColor,
        fixedSize: Size(width, 44),
      ),
      child:
      Text(text, style:  TextStyle(fontSize:sizeText, color: TextColor)),
    );
  }
}
