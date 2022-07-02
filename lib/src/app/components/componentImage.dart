import 'package:flutter/material.dart';

class ComponentImage extends StatelessWidget {
  final String imageUrl;

  ComponentImage({required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Image.asset(imageUrl),
    );
  }
}
