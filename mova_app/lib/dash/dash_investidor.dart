import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mova_ap/samples/carousel.dart';

//import 'form_codigo.dart';
import 'package:mova_ap/cadastro/anexar_docs.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart'; //datefrmat
import 'package:flutter/services.dart';
import 'package:quiver/async.dart';
import 'package:mova_ap/samples/carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intro_slider/intro_slider.dart';

import 'analise_detalhada.dart';
import 'cotas_disponiveis.dart';

class DashInvestidor extends StatefulWidget {
  @override
  _DashInvestidorState createState() => _DashInvestidorState();
}

class _DashInvestidorState extends State<DashInvestidor> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool isvisible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Bem-vindo à MOVA',
            style: TextStyle(color: Colors.purple),
          ),
          actions: <Widget>[
            // action button
            IconButton(
              icon: Icon(
                Icons.add_alert,
                color: Colors.grey,
              ),
              onPressed: () {
                //_select(choices[0]);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey,
              ),
              onPressed: () => _scaffoldKey.currentState.openDrawer(),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Gabriel Goldzweig"),
                accountEmail: Text("goldzweig@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.blue
                          : Colors.white,
                  child: Text(
                    "G",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                title: Text("Ínicio"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => DashInvestidor()));
                },
              ),
              ListTile(
                title: Text("Análise Detalhada"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AnaliseDetalhada()),
                  );
                },
              ),
              ListTile(
                title: Text("Meus Portfólio"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                 // Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CotasDisponiveis()),
                  );
                },
              ),
              ListTile(
                title: Text("Resgatar"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Simular & Investir"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Cotas Disponíveis"),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
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
                    */ /*center: Text(
                      "50%",
                      style: new TextStyle(fontSize: 12.0),
                    ),
                   */ /*
                    linearStrokeCap: LinearStrokeCap.butt,
                    backgroundColor: Colors.white,
                    progressColor: Colors.purple,
                  ),
                ),
              ),*/
              Padding(
                padding:
                    const EdgeInsets.only(top: 80.0, left: 16.0, right: 24.0),
                child: new Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.eye,
                            size: 40,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Visibility(
                        //isvisible,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Saldo investimentos P2P',
                                  style: TextStyle(
                                      color: Colors.purple, fontSize: 18),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'R\$ 0,00',
                                  style: TextStyle(
                                      color: Colors.purple, fontSize: 36),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Saldo em Conta',
                                  style: TextStyle(
                                      color: Colors.purple, fontSize: 18),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'R\$ 0,00',
                                  style: TextStyle(
                                      color: Colors.purple, fontSize: 36),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      /* Visibility(
                        //isvisible,
                        child:Column(
                          children:<Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Pagamentos recebidos',
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontSize: 18),
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'R\$ 0,00',
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontSize: 36),
                                ),

                              ],
                            ),
                            SizedBox(height:10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Rentabiidade',
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontSize: 18),
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '3,55%',
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontSize: 36),
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
*/
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
                      padding: const EdgeInsets.only(top: 0.0, bottom: 0.0),
                      child: Container(
                        //margin: const EdgeInsets.only(top: 100.0),
                        child: ButtonTheme(
                          minWidth: 200,
                          height: 80.0,

                          child: RaisedButton(
                            //onPressed: () => { print("pressionei o botão"), },
                            onPressed: () {
                               Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AnaliseDetalhada()),
                              );
                            },

                            /* shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(4.0)),*/

                            child: Text(
                              "SIMULAR & INVESTIR",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ), //Text
                            color: Colors.green,
                          ),
                          //RaisedButton
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0, bottom: 0.0),
                      child: Container(
                        //margin: const EdgeInsets.only(top: 100.0),
                        child: ButtonTheme(
                          minWidth: 200,
                          height: 80.0,

                          child: RaisedButton(
                            //onPressed: () => { print("pressionei o botão"), },
                            onPressed: () {
                               Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AnaliseDetalhada()),
                              );
                            },

                            /* shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(4.0)),*/

                            child: Text(
                              "ANÁLISE DETALHADA",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ), //Text
                            color: Colors.indigo,
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
      ),
    );
  }
}
