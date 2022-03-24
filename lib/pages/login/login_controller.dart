import 'package:flutter/material.dart';

class LoginController {
  BuildContext context;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  get registro => null;

  Future init(BuildContext context) {
    this.context = context;
  }

  void login() {
    String email = emailController.text;
    String password = passwordController.text;

    print('Email: $email y password es: $password');
  }
    void goToRegisterPage() {
    Navigator.pushNamed(context, 'registro');
  }
  void goToMapPage() {
    Navigator.pushNamed(context, 'map');
  }
}
