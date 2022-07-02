import 'package:app_global_solution/src/utils/export.dart';
import 'package:flutter/material.dart';

//ignore: use_key_in_widget_constructors
class ComponentPage extends StatelessWidget {
  final Widget body;
  final String title;
  ComponentPage({required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: AppPaddings.borderPadding,
          right: AppPaddings.borderPadding,
          top: AppPaddings.topPadding,
        ),
        child: SingleChildScrollView(
          child: body,
        ),
      ),
    );
  }
}
