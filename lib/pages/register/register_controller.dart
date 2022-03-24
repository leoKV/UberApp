import 'dart:html';

import 'package:flutter/material.dart';

class RegisterController {
  BuildContext context;
  TextEditingController nameController= new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController  telController= new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController cityController = new TextEditingController();

  Future init(BuildContext context) {
    this.context = context;
  }

  void registro() {
    String name=nameController.text;
    String email = emailController.text;
    String number= telController.text;
    String password = passwordController.text;
    String city= cityController.text;
  }

   void goToLoginPage() {
    Navigator.pushNamed(context, 'login');
  }
}