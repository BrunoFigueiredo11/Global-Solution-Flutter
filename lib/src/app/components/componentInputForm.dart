import 'package:flutter/material.dart';

class ComponentInputForm extends StatelessWidget {
  @override
  final String label;
  final Function()? onEditingComplete;
  final TextEditingController? userInputController;
  final FocusNode? focusNode;

  ComponentInputForm(
      {required this.label,
      this.onEditingComplete,
      this.userInputController,
      this.focusNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onEditingComplete: onEditingComplete,
      controller: userInputController,
      decoration: InputDecoration(
        label: Text(label),
      ),
    );
  }
}
