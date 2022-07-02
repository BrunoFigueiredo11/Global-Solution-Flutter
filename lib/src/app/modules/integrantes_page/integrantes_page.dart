import 'package:app_global_solution/src/app/components/componentPage.dart';
import 'package:app_global_solution/src/app/modules/controller/controller_page.dart';
import 'package:app_global_solution/src/utils/export.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/componentButton.dart';

//ignore: use_key_in_widget_constructors
class IntegrantesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListPageState();
  }
}

class _ListPageState extends State<IntegrantesPage> {
  late ThemeChanger themeChanger;
  late bool systemIsDark;
  @override
  Widget build(BuildContext context) {
    themeChanger = Provider.of<ThemeChanger>(context, listen: false);
    return ComponentPage(
      title: labelIntegrantes,
      body: Center(
        child: Column(
          children: [
            ComponentButton(
              buttonText: labelIntegrantes,
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title: const Text(labelIntegrantes),
                          content: const Text(labelInfo),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ));
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
