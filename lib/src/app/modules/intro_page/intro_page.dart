import 'package:app_global_solution/src/app/components/componentButton.dart';
import 'package:app_global_solution/src/app/components/componentForm.dart';
import 'package:app_global_solution/src/app/components/componentImage.dart';
import 'package:app_global_solution/src/app/modules/create_account/createAccount.dart';
import 'package:app_global_solution/src/app/modules/home/home_page.dart';
import 'package:app_global_solution/src/utils/export.dart';
import 'package:flutter/material.dart';

//ignore: use_key_in_widget_constructors
class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.only(
            left: AppPaddings.borderPadding,
            right: AppPaddings.borderPadding,
            top: AppPaddings.topPadding,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ComponentImage(
                  imageUrl: 'assets/images/logo.png',
                ),
                const SizedBox(height: 15),
                ComponentForm(label: labelEMail),
                const SizedBox(height: 15),
                ComponentForm(label: labelPassword),
                const SizedBox(height: 30),
                ComponentButton(
                  buttonText: 'Login',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 15),
                ComponentButton(
                  buttonText: 'Cadastrar',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateAccount(),
                      ),
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }
}
