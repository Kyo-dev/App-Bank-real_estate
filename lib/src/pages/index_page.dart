
import 'package:app_bank_bienes/src/pages/template/templatePage.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _page1(),
        _page2(context)
      ],
    )
  );

  Widget _page1() => Stack(
    children: <Widget>[
      _backColor(),
      _imgGround(),
    ],
  );

  Widget _page2(context) => Stack(
    children: <Widget>[
      baseTemplate.backApp(),
      Container (
        child: Center(
          child: IconButton(
            icon: Icon(Icons.fingerprint, color: Color.fromRGBO(100, 26, 107,1) , size: 70.0 ,),
            onPressed: (){
                Navigator.pushNamed(context, "/menu");
            },
          )
        ),
      )
    ],
  );

  Widget _backColor() => Container(
    width: double.infinity,
    height: double.infinity,
    color: Color.fromRGBO(100, 26, 107,1)
    
  );

  Widget _imgGround() => Container (
    // width: double.infinity,
    height: double.infinity,
    
    child: Image(
      image: AssetImage('assets/logoPrincipal.png'),
      // fit: BoxFit.cover
    ),
  );

}

