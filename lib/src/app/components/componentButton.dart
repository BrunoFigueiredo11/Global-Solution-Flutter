import 'package:flutter/material.dart';

class ComponentButton
 extends StatelessWidget {
  final Function()? onPressed;
  final String buttonText;

  ComponentButton
  ({required this.onPressed, required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(buttonText),
      ),
    );
  }
}
