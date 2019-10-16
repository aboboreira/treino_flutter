import 'package:flutter/material.dart';
import 'package:mova_ap/form_dados.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
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
                padding: const EdgeInsets.only(top: 20),
                child: new Container(
                  child: new LinearPercentIndicator(
                    width: 410,
                    lineHeight: 10,
                    percent: 0.375,
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
                      'Seu Perfil',
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
                  child: Form(
                    key: _key,
                    autovalidate: _validate,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 30),
                        Text(
                          'Qual seu objetivo ao investir?',
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
                                  "1",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "1",
                                child: Text(
                                  "2",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ),
                              DropdownMenuItem<String>(
                                value: "2",
                                child: Text(
                                  "3",
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
                          'Quando pretende usar esse dinheiro?',
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
                        Text(
                          'Qual sua escolaridade?',
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

                        Text(
                          'Qua sua renda?',
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
                        Text(
                          'Qual seu patrimônio',
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
                        Text(
                          'Quanto pretende investiar na MOVA?',
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
                      const EdgeInsets.only(top: 10, bottom: 10, left: 10),
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
                      const EdgeInsets.only(top: 10, bottom: 10, left: 90),
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
                                    builder: (context) => DadosCadastrais()),
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
