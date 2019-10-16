import 'package:flutter/material.dart';
import '../form_cadastro2.dart';

class Botao extends StatefulWidget {
  @override
  _BotaoState createState() => _BotaoState();

}

class _BotaoState extends State<Botao> {

  @override
  Widget build(BuildContext context) {
    Container(
      height: 80,
      color: Colors.black12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Container(
//margin: const EdgeInsets.only(top: 100.0),
              child: ButtonTheme(
                minWidth: 14,
                height: 44.0,

                child: FlatButton(
//onPressed: () => { print("pressionei o botão"), },
                  onPressed: () => Navigator.pop(context),

                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(4.0)),

                  child: Text(
                    "<",
                    style:
                    TextStyle(color: Colors.purple, fontSize: 30),
                  ), //Text
                  color: Colors.transparent,
                ), //RaisedButton
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 90),
            child: Container(
//margin: const EdgeInsets.only(top: 100.0),
              child: ButtonTheme(
                minWidth: 142,
                height: 44.0,

                child: RaisedButton(
//onPressed: () => { print("pressionei o botão"), },
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CadastroDois()),
                    );
                  },

                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(4.0)),

                  child: Text(
                    "AVANÇAR novo",
                    style:
                    TextStyle(color: Colors.white, fontSize: 15),
                  ), //Text
                  color: Colors.green,
                ), //RaisedButton
              ),
            ),
          ),
        ],
      ),
    );



  }
}
