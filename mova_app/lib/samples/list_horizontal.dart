import 'package:flutter/material.dart';



class ListHorizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: ListView(

            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(

                width: 400.0,
                color: Colors.red,
                child:Text(
                  'Pagamentos recebidos',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 18),
                ),
              ),
              Container(
                width: 400.0,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}