import 'package:flutter/material.dart';


import 'package:mova_ap/cadastro/form_cadastro.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';

import 'dart:async';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final LocalAuthentication auth = LocalAuthentication();
  bool _canCheckBiometrics;
  List<BiometricType> _availableBiometrics;
  String _authorized = 'Not Authorized';

  Future<void> _checkBiometrics() async {
    bool canCheckBiometrics;
    try {
      canCheckBiometrics = await auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;

    setState(() {
      _canCheckBiometrics = canCheckBiometrics;
    });
  }

  Future<void> _getAvailableBiometrics() async {
    List<BiometricType> availableBiometrics;
    try {
      availableBiometrics = await auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;

    setState(() {
      _availableBiometrics = availableBiometrics;
    });
  }

  Future<void> _authenticate() async {
    bool authenticated = false;
    try {
      authenticated = await auth.authenticateWithBiometrics(
          localizedReason: 'Coloque seu dedo do leitor',
          //androidAuthStrings: ,
          useErrorDialogs: true,
          stickyAuth: true);
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;

    setState(() {
      _authorized = authenticated ? 'Authorized' : 'Not Authorized';
    });
  }

  bool pressed = true;
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool _validate = false;
  String email, senha;
  FocusNode myFocusNode = new FocusNode();
  FocusNode myFocusNode2 = new FocusNode();
  bool isButtonDisable = true;


  @override
  Widget build(BuildContext context) {
    var assetsImage = new AssetImage(
        'assets/images/wall4.png'); //<- Creates an object that fetches an image.
    var image = new Image(image: assetsImage, fit: BoxFit.cover);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.green,
          fontFamily: 'Montserrat',
        ),
        home: Scaffold(
/*
appBar: AppBar(
             title: Text("Titulo"),

          ),*/

            key: _scaffoldKey,
            body: Container(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: new Container(
                          //width: 128.0/MediaQuery.of(context).devicePixelRatio,
                          // height: 86.0/MediaQuery.of(context).devicePixelRatio,
                          width: 200,
                          height: 100,
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/logo_principal.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: new Container(
                          //width: 128.0/MediaQuery.of(context).devicePixelRatio,
                          // height: 86.0/MediaQuery.of(context).devicePixelRatio,

                          height: 297,
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/frame.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),

                      //   Image.asset('assets/images/logo_principal.png'),

                      // Image.asset('assets/images/frame.png'),

                      Divider(),

                      new Container(
                        margin: const EdgeInsets.only(top: 50.0),

                        child: ButtonTheme(
                          minWidth: 327,
                          height: 44.0,

                          child: RaisedButton(
                            onPressed: () {
                              // _settingModalBottomSheet(context);
                              //_showBottomSheetCallback();
                              _settingModalBottomSheet();
                              // _showBottomSheetCallback;
                            },

                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(4.0)),

                            child: Text(
                              "CRIAR CONTA",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat'),
                            ), //Text
                            color: Colors.green,
                          ), //RaisedButton
                        ), //ButtonTheme
                      ),

                      new Container(
                        margin: const EdgeInsets.only(top: 30.0),
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: ButtonTheme(
                            minWidth: 327,
                            height: 24.0,
                            child: FlatButton(
                              child: Text(
                                "JÁ TENHO CONTA",
                                style: TextStyle(
                                    color: Colors.purple, fontSize: 15),
                              ),
                              onPressed: _authenticate,
                              shape: Border.all(
                                  color: Colors.purple,
                                  style: BorderStyle.none,
                                  width: 100),
                              //elevation: 0,
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ), //ButtonTheme
                    ],
                  ),
                ))));
  }

  void _settingModalBottomSheet() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
        ),
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          //padding: const EdgeInsets.symmetric(horizontal:18 ),
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  //alinhar no centro
                  child: Text(
                    'Ótimo, vamos criar sua conta!',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20,
                      fontFamily: 'Montserratfont',
                      fontWeight: FontWeight.w700,),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery
                          .of(context)
                          .viewInsets
                          .bottom),
                  child: Column(children: <Widget>[

                    Form(
                        key: _key,
                        autovalidate: _validate,
                        child: Column(children: <Widget>[

                          TextFormField(
                            focusNode: myFocusNode,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(

                              labelText: "Digite seu e-mail",
                              labelStyle:
                              TextStyle(fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  color: myFocusNode.hasFocus
                                      ? Colors.purple
                                      : Colors.black26),

                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple),
                              ),

                            ),
                            style: new TextStyle(color: Colors.green),
                            validator: (String arg) {
                              if (arg.length < 1) {
                                return 'Preencha o e-mail';
                              } else {
                                return null;
                              }
                            },
                            onSaved: (String val) {
                              email = val;
                            },
                          ),


                          SizedBox(height: 30),

                          TextFormField(
                            //obscureText: true,
                            focusNode: myFocusNode2,
                            obscureText: pressed,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              labelText: "Criar uma senha",
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.purple),
                              ),
                              labelStyle:
                              TextStyle(fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  color: myFocusNode2.hasFocus
                                      ? Colors.purple
                                      : Colors.black26),
                              suffixIcon: IconButton(
                                icon: new Icon(Icons.remove_red_eye),
                                onPressed: () {
                                  //_onEyeButtonPressed();
                                },
                              ),
                            ),
                            style: new TextStyle(color: Colors.green),
                            validator: (String arg) {
                              if (arg.length < 1) {
                                return 'Preencha a senha';
                              } else {
                                return null;
                              }
                            },
                            onSaved: (String val) {
                              senha = val;
                            },
                          ),


                        ],

                        )

                    ),


                    Container(
                      margin: const EdgeInsets.only(top: 100.0),
                      child: ButtonTheme(
                        minWidth: 327,
                        height: 44.0,


                        child: RaisedButton(
                          //onPressed: () => { print("pressionei o botão"), },

                          onPressed: () {
                            if(_key.currentState.validate()){
                              _key.currentState.save();
                              print(email + senha);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CadastroU()),
                              );
                            }else{
                                null;
                            }
                          },

                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(4.0)),

                          child: Text(
                            "CRIAR CONTA",
                            style: TextStyle(color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Montserrat-Bold'),
                          ), //Text
                          color: Colors.green,
                        ), //RaisedButton
                      ),
                    ),

                    new Container(
                      margin: const EdgeInsets.only(top: 30.0),
                      child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: ButtonTheme(
                          minWidth: 327,
                          height: 24.0,
                          child: FlatButton(
                            child: Text(
                              "CANCELAR",
                              style: TextStyle(
                                  color: Colors.purple, fontSize: 15),
                            ),
                            onPressed: () => Navigator.pop(context),
                            shape: Border.all(
                                color: Colors.purple,
                                style: BorderStyle.none,
                                width: 100),
                            //elevation: 0,
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(height: 10),
              ],
            ),
          );
        });
  }

}


void _onEyeButtonPressed(){
  print ('aquiiiiiiiii');
}




/* showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return  Scaffold(
                  resizeToAvoidBottomPadding: false,
                  body: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10, right: 10),

                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'Ótimo, vamos criar sua conta!',
                              style:
                              TextStyle(color: Colors.purple, fontSize: 20),
                            ),
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "E-mail",
                                labelStyle:
                                TextStyle(color: Colors.purple, fontSize: 16),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.purple),
                                ),
                              ),
                            ),
                            // Text('Senha do usuário')

                            TextField(
                                obscureText: true,
                                keyboardType: TextInputType.text,
                                // style: TextStyle(color: Colors.blue, fontSize: 30),
                                decoration: InputDecoration(
                                  labelText: "Criar senha",
                                  labelStyle: TextStyle(
                                      color: Colors.black38, fontSize: 16),
                                  suffixIcon: Icon(Icons.remove_red_eye),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.purple),
                                  ),
                                )),
                            new Container(
                              margin: const EdgeInsets.only(top: 100.0),

                              child: ButtonTheme(
                                minWidth: 327,
                                height: 44.0,

                                child: RaisedButton(
                                  //onPressed: () => { print("pressionei o botão"), },
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Cadastro()),
                                    );
                                  },

                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                      new BorderRadius.circular(4.0)),

                                  child: Text(
                                    "CRIAR CONTA",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ), //Text
                                  color: Colors.green,
                                ), //RaisedButton
                              ), //ButtonTheme
                            ),
                          ],
                        ),
                      ),

            );
          });*/
