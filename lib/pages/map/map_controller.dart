import 'dart:html';

import 'package:flutter/material.dart';

class MapController {
  BuildContext context;

  Future init(BuildContext context) {
    this.context = context;
  }

  void map() {
   
  }

   void goToLoginPage() {
    Navigator.pushNamed(context, 'login');
  }
  void goToServicePage() {
    Navigator.pushNamed(context, 'service');
  }
  void goToHomePage() {
    Navigator.pushNamed(context, 'home');
  }
  
}