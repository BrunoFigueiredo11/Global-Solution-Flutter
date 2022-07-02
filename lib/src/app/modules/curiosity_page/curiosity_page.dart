import 'package:app_global_solution/src/app/components/componentPage.dart';
import 'package:app_global_solution/src/app/components/componentText.dart';
import 'package:app_global_solution/src/app/modules/controller/controller_page.dart';
import 'package:app_global_solution/src/utils/ui_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/componentButton.dart';

//ignore: use_key_in_widget_constructors
class CuriosityPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListPageState();
  }
}

class _ListPageState extends State<CuriosityPage> {
  late ThemeChanger themeChanger;
  late bool systemIsDark;
  @override
  Widget build(BuildContext context) {
    themeChanger = Provider.of<ThemeChanger>(context, listen: false);
    return ComponentPage(
      title: labelCuriosity,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            ComponentText(text: Curiosity, height: 230),
            const SizedBox(height: 15),
            ComponentText(text: Curiosity1, height: 200),
            const SizedBox(height: 15),
            ComponentText(text: Curiosity2, height: 330),
            const Text(labelChooseTheme),
            const SizedBox(height: 25),
            ComponentButton(
              buttonText: 'Dark',
              onPressed: () {
                themeChanger.setDarkStatus(true);
              },
            ),
            const SizedBox(height: 15),
            ComponentButton(
              buttonText: 'Light',
              onPressed: () {
                themeChanger.setDarkStatus(false);
              },
            ),
            const SizedBox(height: 160),
          ],
        ),
      ),
    );
  }
}
