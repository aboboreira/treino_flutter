import 'package:flutter/material.dart';
import 'package:mova_ap/cadastro/form_celular.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';//datefrmat
//import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';


class ContaBancaria extends StatefulWidget {
  @override
  _ContaBancariaState createState() => _ContaBancariaState();
}

class _ContaBancariaState extends State<ContaBancaria> {
  FocusNode myFocusNodeBank= new FocusNode();
  FocusNode myFocusNodeAgency = new FocusNode();
  FocusNode myFocusNodeCount = new FocusNode();

  String bank, agency, count;

  static GlobalKey<FormState> _key = new GlobalKey<FormState>();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  bool _validate = false;
  var _value = "0";

  bool _isEnabled = true;
  int _radioValue1=0;


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
                    percent:0.550,
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
                      'Adicionar sua conta para depósito',
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
                              new Container(
                                child: DropdownButton<String>(
                                  isExpanded: true,
                                  items: [
                                    DropdownMenuItem<String>(
                                      value: "0",
                                      child: Text(
                                        "001 - Banco do Brasil S.A.",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    DropdownMenuItem<String>(
                                      value: "1",
                                      child: Text(
                                        "033 - Banco Santander (Brasil) S.A.",
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                    DropdownMenuItem<String>(
                                      value: "2",
                                      child: Text(
                                        "104 - Caixa Econômica Federal",
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                    DropdownMenuItem<String>(
                                      value: "3",
                                      child: Text(
                                        "237 - Bradesco S.A.",
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                    DropdownMenuItem<String>(
                                      value: "2",
                                      child: Text(
                                        "341 - Itaú Unibanco S.A.",
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                    DropdownMenuItem<String>(
                                      value: "4",
                                      child: Text(
                                        "Outros",
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                  ],
                                  hint: Text("oi"),
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  },
                                  value: _value,
                                ),
                              ),

                              /*TextFormField(
                                focusNode: myFocusNodeBank,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "Banco",
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      color: myFocusNodeAgency.hasFocus
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
                                  bank = val;
                                },
                              ),*/
                              SizedBox(height: 30),
                              TextFormField(
                                focusNode: myFocusNodeAgency,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: "Agência",
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.purple),
                                  ),
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      color: myFocusNodeAgency.hasFocus
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
                                  agency = val;
                                },
                              ),
                              SizedBox(height: 30),

                              TextFormField(
                                focusNode: myFocusNodeCount,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: "Conta",
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.purple),
                                  ),
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      color: myFocusNodeCount.hasFocus
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
                                  count = val;
                                },
                              ),

                              SizedBox(height: 30),

                              Container(
                                child: Row(
                                  //CrossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Tipo de Conta?",
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.purple),
                                    ),
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
                                    'Conta Corrente',
                                    style: new TextStyle(fontSize: 16.0,
                                        color: _isEnabled
                                            ? Colors.green
                                            : Colors.grey),
                                  ),
                                ],
                                //Text("É Pessoa Politicamente Exposta(PPE)?"),
                              ),

                              Row(
                                children: <Widget>[

                                  new Radio(
                                    value: 1,
                                    groupValue: _radioValue1,
                                    onChanged: _handleRadioValueChange1,
                                    activeColor: Colors.green,
                                  ),
                                  new Text(
                                    'Poupança',
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "A conta deve ser de mesma titulariadade",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.purple),
                                    ),
                                  ],
                                ),
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
                                    builder: (context) => Celular()),
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



}

