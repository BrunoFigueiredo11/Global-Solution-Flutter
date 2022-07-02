import 'package:flutter/material.dart';

class pageIncrement extends StatelessWidget {
  final Widget body;

  final String title;
  final Function()? buttomFunction;
  pageIncrement({required this.body, this.buttomFunction, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 50, right: 50, top: 50, bottom: 100),
        child: SingleChildScrollView(
          child: body,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: buttomFunction,
        child: Icon(Icons.add),
      ),
    );
  }
}
