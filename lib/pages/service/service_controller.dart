import 'dart:html';

import 'package:flutter/material.dart';

class ServiceController {
  BuildContext context;
  TextEditingController destinoController = new TextEditingController();
  TextEditingController tarjetaController = new TextEditingController();
  TextEditingController montoController = new TextEditingController();

  Future init(BuildContext context) {
    this.context = context;
  }

  void service() {
    String destino=destinoController.text;
    String tarjeta = tarjetaController.text;
    String monto= montoController.text;
  }
  void goToMapPage() {
    Navigator.pushNamed(context, 'map');
  }
  
}