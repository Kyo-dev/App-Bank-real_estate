import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _page1(),
        _page2()
      ],
    )
  );

  Widget _page1() => Stack(
    children: <Widget>[
      _backColor(),
      _imgGround(),
    ],
  );

  Widget _page2() => Center (
    child: Text('Pagina 2'),
  );

  Widget _backColor() => Container(
    width: double.infinity,
    height: double.infinity,
    color: Color.fromRGBO(108,192,218,1.0),
  );
 
  Widget _imgGround() => Container (
    // width: double.infinity,
    height: double.infinity,
    child: Image(
      image: AssetImage('assets/chonte.jpg'),
      fit: BoxFit.cover
    ),
  );

}





