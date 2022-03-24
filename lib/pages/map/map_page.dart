import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:uber_gds0351/pages/map/map_controller.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  MapController _con = new MapController(); //Objeto controlador

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
        title: Text('Map Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _bannerApp(),
            _textDescription(),
            _imageMap(),
            _textSolicitedService(),
            _buttonSingout()
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
              colors: const [Colors.greenAccent, Colors.green]),
        ),
        height: MediaQuery.of(context).size.height * 0.20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/img/logo_app.png',
              width: 150,
              height: 100,
            ),
            Text(
              'Mapa de busqueda',
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
        'Busca la zona donde deseas el servicio',
        style: TextStyle(color: Colors.black54, fontSize: 17),
      ),
    );
  } //termina _textDescription

  Widget _imageMap() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child:Image.asset('assets/img/mapa.png' ), 
    );
  } //termina _textDescription

  Widget _textSolicitedService() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      child: GestureDetector(
         onTap: _con.goToServicePage,
        child: Text(
          'Solicitar un Servicio de Uber',
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 17
          ),
        ),
      ),
    );
  }
 


  Widget _buttonSingout() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        onPressed: _con.goToHomePage, //Método que ejecuta la acción rnt

        child: Stack(
          children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Cerrar Sesión',
                    style: TextStyle(fontSize: 15),
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
            backgroundColor: MaterialStateProperty.all(Colors.green)),
      ),
    );
  } //termina _buttonLogin
}