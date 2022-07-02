import 'package:app_global_solution/src/app/model/locais.dart';
import 'package:flutter/material.dart';

class ListaController extends ChangeNotifier {
  late List<local> nomeDoAcompanhante = [];

  addStreetAndDistrict({required String locais}) {
    nomeDoAcompanhante.add(local(locais: locais));

    notifyListeners();
  }
}
