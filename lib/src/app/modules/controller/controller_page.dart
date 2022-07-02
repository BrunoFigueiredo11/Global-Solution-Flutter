import 'package:flutter/cupertino.dart';

class ThemeChanger extends ChangeNotifier {
  bool _darkStatus = true;
  isDark() => _darkStatus;

  setDarkStatus(bool status) {
    _darkStatus = status;
    notifyListeners();
  }
}
