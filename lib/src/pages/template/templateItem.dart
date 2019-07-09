import 'package:flutter/material.dart';

class _TemplateItem {

  _TemplateItem();
  final styletitle = TextStyle(fontSize: 25.0, color: Colors.black, fontWeight: FontWeight.bold);
  final stylesubTitle = TextStyle(fontSize: 17.0, color: Colors.grey);

  Widget itemApp(String urlImage, String title, String subTitle, String description, BuildContext context) => SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
      _getImage(urlImage),
      _getTitle(title, subTitle),
      _getText(description),
      ],
    ),
  );

  Widget _getImage(String urlIamge) => Container(
    width: double.infinity,
    child: Image(
      fit: BoxFit.cover,
      height: 200.0,
      image: NetworkImage(
          urlIamge = 'https://cdn.motor1.com/images/mgl/XVw3p/s1/maserati-grancabrio-by-pogea-racing.jpg'
      )
    )
  );

  Widget _getTitle(String title, String subTitle) => SafeArea(
    // title = 'Maserati GranCabrio',
    // subTitle = '2 puertas descapotable',
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title, style: styletitle),
                SizedBox(height: 5.0),
                Text(subTitle, style: stylesubTitle)
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red, size: 17.0),
          Text('69', style: TextStyle(fontSize: 17.0))
        ],
      ),
    )
  );
  
  Widget _getText(String description) => SafeArea(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 9.0),
      child: Text(
        description,
        textAlign: TextAlign.justify,
        style: TextStyle(color: Colors.black, fontSize: 16.0)
      ),
    )
  ); 

}

final templateItem = new _TemplateItem();











  // Widget _bottonSection(context) => Row(
  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //   children: <Widget>[
  //     _makeBotton(Icons.dialpad, 'CALCULADORA', context, '/'),
  //     _makeBotton(Icons.near_me, 'UBICACIÓN', context,'/'),
  //     _makeBotton(Icons.share, 'COMPARTIR', context, '/')
  //   ],
  // );

  // Widget _makeBotton(IconData icon, String texto, context, String direction) => Column(
  //   children: <Widget>[
  //     Icon(icon, color: Color.fromRGBO(90,175,204,1), size: 40.0),
  //     SizedBox(height: 6.0),
  //     FlatButton(
  //         shape: StadiumBorder(),
  //         color: Color.fromRGBO(90,175,204,1),
  //           child: Padding(
  //             padding: EdgeInsets.symmetric(horizontal: 0.0), 
  //             child: Text(texto, style: TextStyle(fontSize: 12.0, color: Colors.white)),
  //           ),
  //             onPressed: () {
  //               Navigator.pushNamed(context, direction);
  //             }
  //         ),
  //   ],
  // );