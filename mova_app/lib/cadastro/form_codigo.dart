import 'package:flutter/material.dart';
//import 'form_codigo.dart';
import 'anexar_docs.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart'; //datefrmat
import 'package:flutter/services.dart';
import 'package:quiver/async.dart';

class Codigo extends StatefulWidget implements PreferredSizeWidget {
  @override
  _CodigoState createState() => _CodigoState();

  @override
  Size preferredSize;
}

class _CodigoState extends State<Codigo> {
  FocusNode myFocusNode1 = new FocusNode();
  FocusNode myFocusNode2 = new FocusNode();
  FocusNode myFocusNode3 = new FocusNode();
  FocusNode myFocusNode4 = new FocusNode();
  String cod1, cod2, cod3, cod4;
  static GlobalKey<FormState> _key = new GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _validate = false;

  int _start = 60;
  int _current = 60;

  bool _isVisible1 = true;
  bool _isVisible2 = false;
  bool _isVisible3 = false;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        key: _scaffoldKey,
        body: Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: new Container(
                  child:  new LinearPercentIndicator(
                    width: 410,
                    lineHeight: 10,
                    percent: 0.800,
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
                  child:
                       Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  'Confirme o código',
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),

                                ),
                              ],

                            ),
                            SizedBox(height: 24),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Digite abaixo o código que enviamos por\nSMS e Whatsapp para o número (**)*****-*768',
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Container(
                                width: 70.0,
                                child:TextFormField(
                                  textAlign: TextAlign.center,
                                  textInputAction: TextInputAction.next,
                                  autofocus: true,
                                  focusNode: myFocusNode1,
                                  onFieldSubmitted: (v){
                                    FocusScope.of(context).requestFocus(myFocusNode2);
                                  },
                                  keyboardType: TextInputType.phone,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(1),
                                  ],
                                  decoration: InputDecoration(
                                    /*labelText: "(xx)xxxxx-xxxx",*/
                                    labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      /*  color: myFocusNodeCel.hasFocus
                                          ? Colors.purple
                                          : Colors.black26*/),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.purple),
                                    ),
                                  ),
                                  style: new TextStyle(color: Colors.purple,fontSize: 30),
                                  validator: (String arg) {
                                    if (arg.length < 1) {
                                      return 'Preencha o campo';
                                    } else {
                                      return null;
                                    }
                                  },
                                  onSaved: (String val) {
                                    cod1 = val;
                                  },
                                ),
                              ),

                              SizedBox(width: 15),
                          new Container(
                            width: 70.0,
                            child:TextFormField(
                              textAlign: TextAlign.center,
                              textInputAction: TextInputAction.next,
                              focusNode: myFocusNode2,
                              onFieldSubmitted: (v){
                                FocusScope.of(context).requestFocus(myFocusNode3);
                              },

                                keyboardType: TextInputType.phone,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                decoration: InputDecoration(
                                  /*labelText: "(xx)xxxxx-xxxx",*/
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                     /* color: myFocusNodeCel.hasFocus
                                          ? Colors.purple
                                          : Colors.black26*/),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.purple),
                                  ),
                                ),
                                style: new TextStyle(color: Colors.purple,fontSize: 30),
                                validator: (String arg) {
                                  if (arg.length < 1) {
                                    return 'Preencha o campo';
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (String val) {
                                  cod2 = val;
                                },
                              ),
                          ),
                              SizedBox(width: 15),
                          new Container(
                            width: 70.0,
                            child:TextFormField(
                              textAlign: TextAlign.center,
                              textInputAction: TextInputAction.next,
                               focusNode: myFocusNode3,
                              onFieldSubmitted: (v){
                                FocusScope.of(context).requestFocus(myFocusNode4);
                              },
                                keyboardType: TextInputType.phone,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                decoration: InputDecoration(
                                  /*labelText: "(xx)xxxxx-xxxx",*/
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      /*color: myFocusNodeCel.hasFocus
                                          ? Colors.purple
                                          : Colors.black26*/),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.purple),
                                  ),
                                ),
                              style: new TextStyle(color: Colors.purple,fontSize: 30),
                                validator: (String arg) {
                                  if (arg.length < 1) {
                                    return 'Preencha o campo';
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (String val) {
                                  cod3  = val;
                                },
                              ),),
                              SizedBox(width: 15),
                          new Container(
                            width: 70.0,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                                focusNode: myFocusNode4,
                                keyboardType: TextInputType.phone,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                ],
                                decoration: InputDecoration(
                                  /*labelText: "(xx)xxxxx-xxxx",*/
                                  labelStyle: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                     /* color: myFocusNodeCel.hasFocus
                                          ? Colors.purple
                                          : Colors.black26*/),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                    BorderSide(color: Colors.purple),
                                  ),
                                ),
                              style: new TextStyle(color: Colors.purple,fontSize: 30),
                                validator: (String arg) {
                                  if (arg.length < 1) {
                                    return 'Preencha o campo';
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (String val) {
                                  cod4 = val;
                                },
                              ),
                          ),
                              SizedBox(height: 30),
                            ],
                          )),
                      //Text("$_start"),

                      SizedBox(height: 10),

                    Visibility(
                      visible: _isVisible3,
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Token inválido",style:TextStyle(color: Colors.red, fontSize: 14, fontFamily: "Montserrat",  fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),


                      SizedBox(height: 50),



                  Visibility(
                    visible: _isVisible1,
                    child:Row(
                        children: <Widget>[
                          Text("${_current} segundos restantes",
                            style:TextStyle(color: Colors.grey, fontSize: 14, fontFamily: "Montserrat"),
                          ),
                        ],
                      ),
                  ),


                  Visibility(
                    visible: _isVisible2,
                      child: Row(
                        children: <Widget>[
                          FlatButton(
                            //onPressed: () => { print("pressionei o botão"), },
                            onPressed: () {
                              startTimer();
                              alterarVisibilidade();

                              //ir no avançar
                              if(_key.currentState.validate()){
                                _key.currentState.save();
                                print(cod1+cod2+cod3+cod4);
                                String codigo =cod1+cod2+cod3+cod4;
                                print("código ${codigo}");
                                if(codigo != "1234"){
                                  print("Token inválido");
                                  _isVisible3 = !_isVisible3;
                                }else if(codigo == "1234"){
                                  _isVisible3 = false;
                                  print("Ok");
                                }
                              }else{
                                null;
                              }
                            },

                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(4.0)),

                            child: Text(
                              "Reenviar Código",
                              style:
                              TextStyle(color: Colors.purple, fontSize: 14, fontFamily: "Montserrat"),
                            ), //Text
                            color: Colors.transparent,
                          ),

                        ],
                      )
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
                             /* Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Anexo()),
                              );*/
                            },

                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(4.0)),

                            child: Text(
                              "AVANÇAR",
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
@override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => startTimer());
  }


  void startTimer() {
    CountdownTimer countDownTimer = new CountdownTimer(
      new Duration(seconds: _start),
      new Duration(seconds: 1),
    );

    var sub = countDownTimer.listen(null);
    sub.onData((duration) {
      setState(() { _current = _start - duration.elapsed.inSeconds; });
    });

    sub.onDone(() {
      print("Done");
      alterarVisibilidade();
      sub.cancel();
    });
  }

  void alterarVisibilidade(){

      _isVisible1= !_isVisible1;
      _isVisible2 = !_isVisible2;

  }

}


