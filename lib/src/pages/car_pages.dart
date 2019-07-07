import 'package:flutter/material.dart';

class CarPage extends StatelessWidget {
  final title = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subTitle = TextStyle(fontSize: 17.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: <Widget>[
            _backApp(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                _getImage(),
                _getTitle(),
                _bottonSection(),
                _getText(),
                _getText(),
                ],
              ),
            ),
           ],
        )
      );

  Widget _getImage() => Container(
    width: double.infinity,
    child: Image(
      fit: BoxFit.cover,
      height: 220.0,
      image: NetworkImage(
          'https://cdn.motor1.com/images/mgl/XVw3p/s1/maserati-grancabrio-by-pogea-racing.jpg'
      )
    )
  );

  Widget _getTitle() => SafeArea(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Maserati GranCabrio', style: title),
                SizedBox(height: 8.0),
                Text('2 puertas descapotable', style: subTitle)
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red, size: 17.0),
          Text('69', style: TextStyle(fontSize: 17.0))
        ],
      ),
    )
  );
  
  Widget _getText() => SafeArea(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. sollicitudine viverra odio, vitae imperdiet tortor ex eleifend purus. Etiam efficitur fringilla mi et porttitor. Vivamus erat ligula, laoreet vitae faucibus id, dapibus id lorem. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',
        textAlign: TextAlign.justify,
        style: TextStyle(color: Colors.white)
      ),
    )
  );

  Widget _bottonSection() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      _makeBotton(Icons.dialpad, 'CALCULADORA'),
      _makeBotton(Icons.near_me, 'ROUTE'),
      _makeBotton(Icons.share, 'SHARE')
    ],
  );

  Widget _makeBotton(IconData icon, String texto) => Column(
    children: <Widget>[
      Icon(icon, color: Color.fromRGBO(236, 98, 188, 1.0), size: 40.0),
      SizedBox(height: 6.0),
      Text(texto, style: TextStyle(fontSize: 15.0, color: Color.fromRGBO(241, 142, 172, 1.0)))
    ],
  );

  
  Widget _backApp() => Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );

}