import 'package:flutter/material.dart';
import 'package:mova_ap/cadastro/form_perfil.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CadastroDois extends StatefulWidget {
  @override
  _CadastroDoisState createState() => _CadastroDoisState();
}

class _CadastroDoisState extends State<CadastroDois> {
  FocusNode myFocusNode = new FocusNode();

  // FocusNode myFocusNode2 = new FocusNode();
  var _value = "0";
  var _value2 = "0";

  bool _isVisible = false;

  static GlobalKey<FormState> _key = new GlobalKey<FormState>();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final GlobalKey<State> _state = GlobalKey<State>();

  bool _validate = false;

  String profissao, nacionalidade;

  int _radioValue1 = 0;
  double _result = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: true,
        key: _scaffoldKey,
        body: Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: new Container(
                  child: new LinearPercentIndicator(
                    width: 410,
                    lineHeight: 10,
                    percent: 0.250,
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
                  child: Form(
                    key: _key,
                    autovalidate: _validate,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 30),
                        Text(
                          'Gênero',
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 16,
                              color: Colors.purple),
                        ),
                        new Container(
                          child: DropdownButton<String>(
                            isExpanded: true,
                            items: [
                              DropdownMenuItem<String>(
                                value: "0",
                                child: Text(
                                  "Escolha",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "1",
                                child: Text(
                                  "Masculino",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "2",
                                child: Text(
                                  "Feminino",
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
                        SizedBox(height: 30),
                        Text(
                          'Estado civíl',
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 16,
                              color: Colors.purple),
                        ),
                        new Container(
                            child: DropdownButton<String>(
                          isExpanded: true,

                          items: [
                            DropdownMenuItem<String>(
                              value: "0",
                              child: Text(
                                "Escolha",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "1",
                              child: Text(
                                "Solteiro",
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                            DropdownMenuItem<String>(
                              value: "2",
                              child: Text(
                                "Casado",
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                          ],
                          value: _value2,
                          onChanged: (value) {
                            setState(() {
                              _value2 = value;
                              _isVisible = !_isVisible;
                            });
                            print(_value2);
                           // if(_value2 == "2"){
                             // print("golll");
                              //_isVisible = !_isVisible;
                            //}
                          },
                          hint: Text('Escolha'),
                          //value: _value2,
                        )),


                        SizedBox(height: 30),

                    Visibility(
                      visible: _isVisible,
                      child:Container(
                        child: TextFormField(
                          autofocus: true,
                          focusNode: myFocusNode,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: "Nome do Cônjuge",
                            labelStyle:
                            TextStyle(fontSize: 16, color: myFocusNode.hasFocus ? Colors.purple : Colors.black26),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.purple),
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
                            profissao = val;
                          },
                        ),
                      ),
                    ),


                      ],
                    ),
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
                              print("indo");
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Perfil()),
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
}
