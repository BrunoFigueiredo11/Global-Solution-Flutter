import 'package:app_global_solution/src/app/components/componentButton.dart';
import 'package:app_global_solution/src/app/components/componentCard.dart';
import 'package:app_global_solution/src/app/components/componentInputForm.dart';
import 'package:app_global_solution/src/app/components/page_increment.dart';
import 'package:app_global_solution/src/app/components/componentText.dart';
import 'package:app_global_solution/src/app/modules/controller/controller_page.dart';
import 'package:app_global_solution/src/app/modules/list_page/list_controller.dart';
import 'package:app_global_solution/src/utils/ui_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListPageState();
  }
}

class _ListPageState extends State<ListPage> {
  TextEditingController nameController = TextEditingController();
  ListaController controller = ListaController();
  FocusNode name = FocusNode();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  late ThemeChanger themeChanger;
  late bool systemIsDark;
  @override
  Widget build(BuildContext context) {
    themeChanger = Provider.of<ThemeChanger>(context, listen: false);
    return pageIncrement(
        title: "Cadastrar Roteiro de locais",
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15),
              ComponentText(text: labelScript, height: 60),
              const SizedBox(height: 15),
              ComponentInputForm(
                label: "Locais",
                onEditingComplete: () {
                  name.nextFocus();
                },
                focusNode: name,
                userInputController: nameController,
              ),
              const SizedBox(height: 30),
              const SizedBox(height: 15),
              ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 15);
                  },
                  shrinkWrap: true,
                  itemCount: controller.nomeDoAcompanhante.length,
                  itemBuilder: (context, index) {
                    var itemName = controller.nomeDoAcompanhante[index];
                    return ComponentCard(leftText: itemName.locais);
                  }),
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
        buttomFunction: () {
          controller.addStreetAndDistrict(
            locais: nameController.text,
          );
        });
  }
}
