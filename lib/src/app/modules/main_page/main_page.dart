import 'package:app_global_solution/src/app/modules/controller/controller_page.dart';
import 'package:app_global_solution/src/app/modules/intro_page/intro_page.dart';
import 'package:app_global_solution/src/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool darkThemeEnabled = Provider.of<ThemeChanger>(context).isDark();
    return MaterialApp(
      home: IntroPage(),
      theme: darkThemeEnabled ? darkTheme : lightTheme,
    );
  }
}
