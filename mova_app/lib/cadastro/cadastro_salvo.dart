import 'package:flutter/material.dart';
//import 'form_codigo.dart';
import 'anexar_docs.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart'; //datefrmat
import 'package:flutter/services.dart';
import 'package:quiver/async.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CadSalvo extends StatefulWidget {
  @override
  _CadSalvoState createState() => _CadSalvoState();

}

class _CadSalvoState extends State<CadSalvo> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              /*Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: new Container(
                  child:  new LinearPercentIndicator(
                    width: 410,
                    lineHeight: 10,
                    percent: 0.800,
                    *//*center: Text(
                      "50%",
                      style: new TextStyle(fontSize: 12.0),
                    ),
                   *//*
                    linearStrokeCap: LinearStrokeCap.butt,
                    backgroundColor: Colors.white,
                    progressColor: Colors.purple,
                  ),
                ),
              ),*/
              Padding(
                padding: const EdgeInsets.only(top: 150.0, left: 16.0, right: 24.0),
                child: new Container(


                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.checkCircle,
                              size: 120,
                              color:Colors.green,
                            ),
                    ],
                  ),
                        SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Seu cadastro foi recebido e salvo',
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),

                                ),
                              ],
                            ),


                        SizedBox(height: 20),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Iremos analisar as inforações e retornaremos \n'
                                  'o mais breve possível. \n'
                                  'Enquanto isso você pode navegar pela sua \n'
                                  'conta e conhecer melhor a plataforma.',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),

                ),
              ),


              new Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: ListView(
                    children: <Widget>[
                      //Text("$_start"),





                      SizedBox(height: 50),


                    ],
                  ),
                ),
              ),




              new Container(
                height: 80,
                color: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Container(
                        //margin: const EdgeInsets.only(top: 100.0),
                        child: ButtonTheme(
                          minWidth: 142,
                          height: 44.0,

                          child: RaisedButton(
                            //onPressed: () => { print("pressionei o botão"), },
                            onPressed: () {
                              /* Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Anexo()),
                              );*/
                            },

                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(4.0)),

                            child: Text(
                              "VER MINHA CONTA",
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ), //Text
                            color: Colors.green,
                          ),
                          //RaisedButton
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        /*AppBar(
              title: Text("Title"),
              bottom: _createProgressIndicator()
          );*/

      ),
    );
  }



}


