import 'package:app_global_solution/src/app/modules/controller/controller_page.dart';
import 'package:app_global_solution/src/app/modules/main_page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeChanger>(
          create: (_) => ThemeChanger(),
        ),
      ],
      child: MyApp(),
    ),
  );
}
