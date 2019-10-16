import 'package:flutter/material.dart';
//import 'form_cadastro2.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';//datefrmat
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';




class DadosCadastrais extends StatefulWidget {
  @override
  _DadosCadastraisState createState() => _DadosCadastraisState();
}

class _DadosCadastraisState extends State<DadosCadastrais> {
  FocusNode myFocusNodeName = new FocusNode();
  FocusNode myFocusNodeCpf = new FocusNode();
  FocusNode myFocusNodeBorn = new FocusNode();

  String occupation, nationality, city;

  static GlobalKey<FormState> _key = new GlobalKey<FormState>();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  //final GlobalKey<State> _state = GlobalKey<State>();

  bool _validate = false;

  bool _isEnabled = true;
  bool _isEnabled2 = true;
  int _radioValue1=0;
  int _radioValue2 = 0;

  final format = DateFormat("dd/MM/yyyy");

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
                padding: const EdgeInsets.only(top: 24),
                child: new Container(
                  child: new LinearPercentIndicator(
                    width:410,
                    lineHeight: 10,
                    percent:0.425,
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
                padding: const EdgeInsets.only(top: 30, left: 16, right: 24),
                child: new Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Dados cadastrais',
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
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: ListView(
                    children: <Widget>[
                      Form(
                          key: _key,
                          autovalidate: _validate,
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                focusNode: myFocusNodeName,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "Nome Completo",
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      color: myFocusNodeName.hasFocus
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
                                focusNode: myFocusNodeCpf,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: "CPF",
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.purple),
                                  ),
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      color: myFocusNodeCpf.hasFocus
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

                              DateTimeField(
                                //focusNode: myFocusNodeBorn,
                               format: format,
                                decoration: InputDecoration(
                                  labelText: "Data de nascimento",
                                  focusedBorder:  UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.purple),
                                  ),
                                    labelStyle: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Montserrat',
                                        color:  Colors.purple
                                            )
                                ),
                                style: new TextStyle(color: Colors.green),
                                onShowPicker: (context, currentValue) {
                                  return showDatePicker(
                                      context: context,
                                      firstDate: DateTime(1900),
                                      initialDate: currentValue ?? DateTime.now(),
                                      lastDate: DateTime(2100)
                                  );
                                },
                              ),




                              SizedBox(height: 30),


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
                        /*    onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                 //   builder: (context) => CadastroDois()),
                              );
                            },*/

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

