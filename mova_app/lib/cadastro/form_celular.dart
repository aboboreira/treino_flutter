import 'package:flutter/material.dart';

import 'package:mova_ap/cadastro/form_codigo.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart'; //datefrmat

class Celular extends StatefulWidget {
  @override
  _CelularState createState() => _CelularState();
}

class _CelularState extends State<Celular> {
  FocusNode myFocusNodeCel = new FocusNode();

  String cel;

  static GlobalKey<FormState> _key = new GlobalKey<FormState>();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _validate = false;
  var _value = "0";

  bool _isEnabled = true;
  int _radioValue1 = 0;

  Codigo form_codigo = new Codigo();

  bool _check = false;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: true,
        key: _scaffoldKey,
        body: Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: new Container(
                  child: new LinearPercentIndicator(
                    width: 410,
                    lineHeight: 10,
                    percent: 0.675,
                    /*center: Text(
                      "50%",
                      style: new TextStyle(fontSize: 12.0),
                    ),
*/
                    linearStrokeCap: LinearStrokeCap.butt,
                    backgroundColor: Colors.white,
                    progressColor: Colors.purple,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 16.0, right: 24.0),
                child: new Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Celular',
                      style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                  ),
                ),
              ),
              new Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: ListView(
                    children: <Widget>[
                      Form(
                          key: _key,
                          autovalidate: _validate,
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                focusNode: myFocusNodeCel,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  labelText: "(xx)xxxxx-xxxx",
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      color: myFocusNodeCel.hasFocus
                                          ? Colors.purple
                                          : Colors.black26),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.purple),
                                  ),
                                ),
                                style: new TextStyle(color: Colors.green),
                                validator: (String arg) {
                                  if (arg.length < 3) {
                                    return 'Preencha o campo';
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (String val) {
                                  cel = val;
                                },
                              ),
                              SizedBox(height: 30),
                            ],
                          )),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 10.0, right: 10.0),
                            child: Row(
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Checkbox(
                                      value: _check,
                                      onChanged: (bool value) {
                                        setState(() {
                                          _check = value;
                                        });
                                      },
                                      activeColor: Colors.purple,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "Aceito os Termos de Uso, a Política \n"
                                      " de Privacidade e os Termos do \n"
                                      "investimento. Tenho ciência que o \n"
                                      " investimento apresenta riscos de \n"
                                      "perda do capital investido e tenho \n"
                                      "ciência dos prazos do investimento. \n",
                                      style: TextStyle(
                                          fontSize: 17.0, color: _check
                                          ? Colors.purple
                                          : Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              new Container(
                height: 80,
                color: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
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
                      padding:
                          const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 90.0),
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
                                   builder: (context) => Codigo()),
                              );
                            },

                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(4.0)),

                            child: Text(
                              "AVANÇAR",
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
              ),
            ],
          ),
        ),

      ),
    );
  }

 /* void teste(){
    form_codigo.createState().startTimer();
  }*/

}
