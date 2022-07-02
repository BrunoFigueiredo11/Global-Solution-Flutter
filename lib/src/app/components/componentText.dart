import 'package:flutter/material.dart';

class ComponentText extends StatelessWidget {
  final String? text;
  final double height;
  ComponentText({this.text, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Text(
        text!,
        textAlign: TextAlign.center,
        softWrap: true,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
