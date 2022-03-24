import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:uber_gds0351/pages/register/register_controller.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  RegisterController _con = new RegisterController(); //Objeto controlador

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance.addPersistentFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _bannerApp(),
            _textDescription(),
            _textFieldName(),
            _textFieldNumber(),
            _textFieldEmail(),
            _textFieldPassword(),
            _textFieldCity(),
            _buttonLogin()
          ],
        ),
      ),
    );
  }

    Widget _bannerApp() {
    return ClipPath(
      clipper: OvalBottomBorderClipper(),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: const [Colors.redAccent, Colors.red]),
        ),
        height: MediaQuery.of(context).size.height * 0.30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/img/logo_app.png',
              width: 150,
              height: 100,
            ),
            Text(
              '¿Ya tienes una cuenta?',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 30,
                  fontFamily: 'Serif'),
            )
          ],
        ),
      ),
    );
  } //Terminar _bannerApp

   Widget _textDescription() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        'O crea una Cuenta Nueva',
        style: TextStyle(color: Colors.black54, fontSize: 17),
      ),
    );
  } //termina _textDescription

  Widget _textFieldName() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _con.nameController, //Se asigna el controlador del email
        decoration: InputDecoration(
          labelText: 'Nombre Completo',
          labelStyle: TextStyle(fontSize: 15),
          hintText: 'Kevin Leonel Valdez Sánchez'
        ),
      ),
    );
  } // termina _textFieldName

 

  Widget _textFieldNumber() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _con.telController, //Se asigna el controlador del email
        decoration: InputDecoration(
          labelText: 'Teléfono',
          labelStyle: TextStyle(fontSize: 15),
          hintText:'4181132739' ,
          suffix: Icon(
            Icons.phone,
            color: Colors.black54,
          ),
        ),
      ),
    );
  } // termina _textFieldNumber

   Widget _textFieldEmail() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _con.emailController, //Se asigna el controlador del email
        decoration: InputDecoration(
          hintText: 'correo@gmail.com',
          labelText: 'Correo electrónico',
          labelStyle: TextStyle(fontSize: 15),
          suffix: Icon(
            Icons.email_outlined,
            color: Colors.black54,
          ),
        ),
      ),
    );
  } // termina _textFieldEmail

  Widget _textFieldPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: TextField(
        controller: _con.passwordController, //Controlador de password
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Contraseña',
          hintText: '*********',
          labelStyle: TextStyle(fontSize: 15),
          suffix: Icon(
            Icons.lock_clock_outlined,
            color: Colors.black54,
          ),
        ),
      ),
    );
  } //termina _textFieldPassword


  Widget _textFieldCity() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: TextField(
        controller: _con.cityController, //Controlador de password
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Ciudad',
           hintText: 'San Diego de la Unión',
          labelStyle: TextStyle(fontSize: 15),
          suffix: Icon(
            Icons.location_city,
            color: Colors.black54,
          ),
        
        ),
      ),
    );
  } //termina _textFieldCity




  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        onPressed: _con.goToLoginPage, //Método que ejecuta la acción rnt

        child: Stack(
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Registrar',
                    style: TextStyle(fontSize: 17),
                  ),
                )),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Align(
                alignment: Alignment.centerRight,
                
              ),
            )
          ],
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.orangeAccent)),
      ),
    );
  } //termina _buttonLogin
}