import 'package:flutter/material.dart';

class _TemplateItem {

  _TemplateItem();
  final styletitle = TextStyle(fontSize: 30.0, color: Colors.black, fontWeight: FontWeight.bold);
  final stylesubTitle = TextStyle(fontSize: 17.0, color: Colors.purple, fontWeight: FontWeight.bold);
    // final scansBloc = new ScansBloc();

  Widget itemApp(String urlImage, String title, String subTitle, String description, BuildContext context, double price) => SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
      _getImage(urlImage),
      _getTitle(title, subTitle),
      _getText(description),
      // _calc(price),
      // _getMap(context)
      ],
    ),
  );

  Widget _getImage(String urlIamge) => Container(
    width: double.infinity,
    child: Image(
      fit: BoxFit.cover,
      height: 200.0,
      image: NetworkImage(
          urlIamge = urlIamge
      )
    )
  );

  Widget _getTitle(String title, String subTitle) => SafeArea(
    // title = 'Maserati GranCabrio',
    // subTitle = '2 puertas descapotable',
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(title, style: styletitle),
                // SizedBox(height: 0),
                Text(subTitle, style: stylesubTitle)
              ],
            ),
          ),
          // Icon(Icons.star, color: Colors.red, size: 17.0),
          // Text('69', style: TextStyle(fontSize: 17.0))
        ],
      ),
    )
  );
  
  Widget _getText(String description) => SafeArea(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
      child: Text(
        description,
        textAlign: TextAlign.justify,
        style: TextStyle(color: Colors.black, fontSize: 17.0)
      ),
    )
  ); 

}

final templateItem = new _TemplateItem();