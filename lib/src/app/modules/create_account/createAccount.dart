import 'package:app_global_solution/src/app/components/componentButton.dart';
import 'package:app_global_solution/src/app/components/componentForm.dart';
import 'package:app_global_solution/src/app/components/componentPage.dart';
import 'package:app_global_solution/src/app/modules/controller/controller_page.dart';
import 'package:app_global_solution/src/app/modules/intro_page/intro_page.dart';
import 'package:app_global_solution/src/utils/export.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//ignore: use_key_in_widget_constructors
class CreateAccount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CreateAccountState();
  }
}

class _CreateAccountState extends State<CreateAccount> {
  late ThemeChanger themeChanger;
  late bool systemIsDark;
  @override
  Widget build(BuildContext context) {
    themeChanger = Provider.of<ThemeChanger>(context, listen: false);
    return ComponentPage(
      title: "Cadastro",
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: AppPaddings.borderPadding,
            right: AppPaddings.borderPadding,
            top: AppPaddings.topPadding,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 25.0,
              ),
              ComponentForm(label: labelName),
              const SizedBox(
                height: 25.0,
              ),
              ComponentForm(label: labelEMail),
              const SizedBox(
                height: 25.0,
              ),
              ComponentForm(label: labelPassword),
              const SizedBox(
                height: 25.0,
              ),
              ComponentForm(label: labelConfirmPassword),
              const SizedBox(
                height: 25.0,
              ),
              ComponentButton(
                buttonText: labelCreateAccount,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IntroPage(),
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
      ),
    );
  }
}
