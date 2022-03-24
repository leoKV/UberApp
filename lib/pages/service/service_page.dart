import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:uber_gds0351/pages/service/service_controller.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key key}) : super(key: key);

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  ServiceController _con = new ServiceController(); //Objeto controlador

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
        title: Text('Service Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _bannerApp(),
            _textDescription(),
            _textFieldDestino(),
            _textFieldTarjeta(),
            _textFieldMonto(),
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
              colors: const [Colors.orangeAccent, Colors.yellow]),
        ),
        height: MediaQuery.of(context).size.height * 0.25,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/img/logo_app.png',
              width: 150,
              height: 100,
            ),
            Text(
              'Solicite su Servicio',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 25,
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
        'Complete los datos para realizar la transacción',
        style: TextStyle(color: Colors.orangeAccent, fontSize: 17),
      ),
    );
  } //termina _textDescription

  Widget _textFieldDestino() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        //controller: _con.nameController, //Se asigna el controlador del email
        decoration: InputDecoration(
          labelText: 'Ingrese el punto de Destino',
          labelStyle: TextStyle(fontSize: 15, color: Colors.blueGrey),
          suffix: Icon(
            Icons.person_pin_circle_outlined,
            color: Colors.black54,
          ),
        ),
      ),
    );
  } // termina _textFieldName

   Widget _textFieldTarjeta() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        //controller: _con.nameController, //Se asigna el controlador del email
        decoration: InputDecoration(
          labelText: 'Ingrese el numero de su tarjeta',
          labelStyle: TextStyle(fontSize: 15, color: Colors.blueGrey),
          suffix: Icon(
            Icons.credit_card,
            color: Colors.black54,
          ),
        ),
      ),
    );
  } // termina _textFieldName

   Widget _textFieldMonto() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        //controller: _con.nameController, //Se asigna el controlador del email
        decoration: InputDecoration(
          labelText: 'Ingrese el monto a pagar',
          labelStyle: TextStyle(fontSize: 15, color: Colors.blueGrey),
          suffix: Icon(
            Icons.attach_money,
            color: Colors.black54,
          ),
        ),
      ),
    );
  } // termina _textFieldName

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        onPressed: _con.goToMapPage, //Método que ejecuta la acción rnt

        child: Stack(
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Realizar Transacción',
                    style: TextStyle(fontSize: 18),
                  ),
                )),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Align(
                alignment: Alignment.centerRight,
                child: CircleAvatar(
                  child: Icon(Icons.attach_money),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.green,
                  radius: 25,
                ),
              ),
            )
          ],
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green)),
      ),
    );
  } //termina _buttonLogin

 
}