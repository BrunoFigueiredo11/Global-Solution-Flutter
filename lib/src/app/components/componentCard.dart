import 'package:flutter/material.dart';

class ComponentCard extends StatelessWidget {
  final String leftText;

  ComponentCard({required this.leftText});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.black54,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Text('Local: ' + leftText),
          ],
        ));
  }
}
