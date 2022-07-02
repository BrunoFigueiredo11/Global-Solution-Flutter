import 'package:flutter/material.dart';

class ComponentForm extends StatelessWidget {
  final String label;
  ComponentForm({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(label),
      ),
    );
  }
}
