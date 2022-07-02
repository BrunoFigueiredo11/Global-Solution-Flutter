import 'package:app_global_solution/src/app/components/componentButton.dart';
import 'package:app_global_solution/src/app/components/componentPage.dart';
import 'package:app_global_solution/src/app/modules/curiosity_page/curiosity_page.dart';
import 'package:app_global_solution/src/app/modules/controller/controller_page.dart';
import 'package:app_global_solution/src/app/modules/integrantes_page/integrantes_page.dart';
import 'package:app_global_solution/src/app/modules/list_page/listPage.dart';
import 'package:app_global_solution/src/utils/export.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  late ThemeChanger themeChanger;
  late bool systemIsDark;

  @override
  Widget build(BuildContext context) {
    themeChanger = Provider.of<ThemeChanger>(context, listen: false);
    return ComponentPage(
      title: labelHome,
      body: Center(
        child: Column(
          children: [
            const Text("Escolha uma opção: "),
            const SizedBox(height: 20),
            ComponentButton(
              buttonText: labelPhotoScript,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 15),
            ComponentButton(
              buttonText: labelCuriosity,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CuriosityPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 15),
            ComponentButton(
              buttonText: labelIntegrantes,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IntegrantesPage(),
                  ),
                );
              },
            ),
            const SizedBox(height: 15),
            const Text(labelChooseTheme),
            const SizedBox(height: 15),
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
          ],
        ),
      ),
    );
  }
}
