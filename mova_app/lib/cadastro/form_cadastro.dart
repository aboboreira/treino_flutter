import 'package:flutter/material.dart';
import 'package:mova_ap/cadastro/form_cadastro2.dart';
import 'package:percent_indicator/percent_indicator.dart';


class CadastroU extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<CadastroU> {
  FocusNode myFocusNodeOccupation = new FocusNode();
  FocusNode myFocusNodeNationality = new FocusNode();
  FocusNode myFocusNodeCity = new FocusNode();

  String occupation, nationality, city;

  static GlobalKey<FormState> _key = new GlobalKey<FormState>();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final GlobalKey<State> _state = GlobalKey<State>();

  bool _validate = false;

  bool _isEnabled = true;
  bool _isEnabled2 = true;
  int _radioValue1=0;
  int _radioValue2 = 0;


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
                    width:410,
                    lineHeight: 10,
                    percent:0.125,
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
                      'Cadastro',
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
                                focusNode: myFocusNodeOccupation,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "Profissão",
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      color: myFocusNodeOccupation.hasFocus
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
                                  occupation = val;
                                },
                              ),
                              SizedBox(height: 30),
                              TextFormField(
                                focusNode: myFocusNodeNationality,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "Nacionalidade",
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.purple),
                                  ),
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      color: myFocusNodeNationality.hasFocus
                                          ? Colors.purple
                                          : Colors.black26),
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
                                  nationality = val;
                                },
                              ),
                              SizedBox(height: 30),
                              TextFormField(
                                focusNode: myFocusNodeCity,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "Cidade onde nasceu",
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.purple),
                                  ),
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      color: myFocusNodeCity.hasFocus
                                          ? Colors.purple
                                          : Colors.black26),
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
                                  city = val;
                                },
                              ),
                              SizedBox(height: 30),
                              Container(
                                child: Row(
                                  //crossAxisAlignment:  CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "É Pessoa Politicamente Exposta?",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.purple),
                                    ),
                                    Icon(Icons.info, color: Colors.blue),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  new Radio(
                                    value: 0,
                                    groupValue: _radioValue1,
                                    onChanged: _handleRadioValueChange1,
                                    activeColor: Colors.green,
                                  ),
                                  new Text(
                                    'Não',
                                    style: new TextStyle(fontSize: 16.0,
                                        color: _isEnabled
                                            ? Colors.green
                                            : Colors.grey),
                                  ),



                                  new Radio(
                                    value: 1,
                                    groupValue: _radioValue1,
                                    onChanged: _handleRadioValueChange1,
                                    activeColor: Colors.green,
                                  ),
                                  new Text(
                                    'Sim',
                                    style: new TextStyle(fontSize: 16.0,
                                        color: _isEnabled
                                            ? Colors.grey
                                            : Colors.green),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Container(
                                child: Row(
                                  //CrossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Residente fiscal dos Estados Unidos?",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.purple),
                                    ),
                                    Icon(Icons.info, color: Colors.blue),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  new Radio(
                                    value: 0,
                                    groupValue: _radioValue2,
                                    onChanged: _handleRadioValueChange2,
                                    activeColor: Colors.green,
                                  ),
                                  new Text(
                                    'Não',
                                    style: new TextStyle(fontSize: 16.0,
                                        color: _isEnabled2
                                            ? Colors.green
                                            : Colors.grey),
                                  ),



                                  new Radio(
                                    value: 1,
                                    groupValue: _radioValue2,
                                    onChanged: _handleRadioValueChange2,
                                    activeColor: Colors.green,
                                  ),
                                  new Text(
                                    'Sim',
                                    style: new TextStyle(fontSize: 16.0,
                                        color: _isEnabled2
                                        ? Colors.grey
                                        : Colors.green),
                                  ),



                                ],
                                //Text("É Pessoa Politicamente Exposta(PPE)?"),
                              ),
                            ],
                          )),


                    ],
                  ),

                ),
              ),

              // Botao().createState(),


              new Container(
                height: 80,
                color: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 10.0),
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
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 90.0),
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

        /* TextField(
          // autofocus: true,
          keyboardType: TextInputType.text,
          //style: TextStyle(color: Colors.purple, fontSize: 16),
          //decoration:
          // new InputDecoration(fillColor: Colors.orange, filled: true),

          decoration: InputDecoration(
            labelText: "Profissao",
            // labelStyle: TextStyle(color: Colors.purple, fontSize: 16),

            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),
            ),
          ),
        ),
*/
      ),
    );

  }

  void _handleRadioValueChange1(int value) {
    _radioValue1 = value;
    setState(() {
      _isEnabled = !_isEnabled;

    });

  }

  void _handleRadioValueChange2(int value) {
    _radioValue2 = value;
    setState(() {
      _isEnabled2 = !_isEnabled2;
    });
  }

}

