import 'package:flutter/material.dart';
import 'package:mova_ap/cadastro/form_cadastro2.dart';
import 'package:mova_ap/utils/detalhe_cota.dart';
import 'package:mova_ap/utils/filtros.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'analise_detalhada.dart';
import 'dash_investidor.dart';

class CotasDisponiveis extends StatefulWidget {
  @override
  _CotasDisponiveis createState() => _CotasDisponiveis();
}

class _CotasDisponiveis extends State<CotasDisponiveis> {
  FocusNode myFocusNodeOccupation = new FocusNode();
  FocusNode myFocusNodeNationality = new FocusNode();
  FocusNode myFocusNodeCity = new FocusNode();

  String occupation, nationality, city;

  static GlobalKey<FormState> _key = new GlobalKey<FormState>();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final GlobalKey<State> _state = GlobalKey<State>();

  String title = "Escolher";

  bool _validate = false;

  Color color;
  bool selected = false;

  @override
  void initState() {
    super.initState();

    color = Colors.grey[200];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: true,
        key: _scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.purple,
            ),
            onPressed: () => Navigator.pop(context),
            // Navigator.of(context, rootNavigator: true).pop();
          ),
          backgroundColor: Colors.white,
          titleSpacing: 1.0,
          title: const Text(
            'Cotas Disponíveis',
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
                    MaterialPageRoute(builder: (context) => AnaliseDetalhada()),
                  );
                },
              ),
              ListTile(
                title: Text("Meus Portfólio"),
                trailing: Icon(Icons.arrow_forward),
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

        body: Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 0.0, right: 0.0),
                child: new Container(
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Filtros',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            IconButton(
                                icon: Icon(
                                  FontAwesomeIcons.filter,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  //showCota(context);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ExpansionTileSample()),
                                  );
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 24.0, left: 16.0, right: 16.0, bottom: 40.0),
                child: new Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Selecione manualmente as cotas do seu portfólio',
                      style: TextStyle(color: Colors.purple, fontSize: 16),
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
                                autofocus: false,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  labelText: "Buscar",
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: Colors.purple,
                                  ),
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
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "(por nome, área da empresa ou instituição de ensino)",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  print("Container was tapped");
                                },
                                child: Container(
                                  child: ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    shrinkWrap: true,
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Card(
                                        shape: selected
                                            ? new RoundedRectangleBorder(
                                                side: new BorderSide(
                                                    color: Colors.purple,
                                                    width: 2.0),
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              )
                                            : new RoundedRectangleBorder(
                                                side: new BorderSide(
                                                    color: Colors.transparent,
                                                    width: 2.0),
                                                borderRadius:
                                                    BorderRadius.circular(4.0)),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            Container(
                                              child: ListTile(
                                                leading: new Checkbox(
                                                    value: selected,
                                                    activeColor:
                                                        Colors.transparent,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        selected = value;
                                                      });
                                                    }),
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal: 1.0),
                                                title: selected
                                                    ? Text(
                                                        "Escolhido",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      )
                                                    : Text(
                                                        "Escolher",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),

                                                //subtitle: Text("nm"),
                                                //trailing: Icon(Icons.search),
                                                onTap: () {
                                                  print("escolhido");
                                                  setState(() {});
                                                },
                                              ),
                                              color: selected
                                                  ? Colors.purple
                                                  : Colors.grey[200],
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10.0, bottom: 10.0),
                                              child: Row(
                                                children: <Widget>[
                                                  Column(
                                                    children: <Widget>[
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Container(
                                                          color:
                                                              Colors.lightBlue,
                                                          height: 50,
                                                          width: 50,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: <Widget>[
                                                              Text(
                                                                "A",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        "24,00%",
                                                        style: TextStyle(
                                                            color: Colors.blue,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      //Text('A'),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'PÓS BRASIL',
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .purple),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Cota',
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  color: Colors
                                                                      .purple,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(
                                                              'R\$ 1.000,00',
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  color: Colors
                                                                      .purple),
                                                            )
                                                            // R\$ 1.000,00'),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Prazo',
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  color: Colors
                                                                      .purple,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(
                                                              '24',
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  color: Colors
                                                                      .purple),
                                                            )
                                                            // R\$ 1.000,00'),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            2.0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'MACKENZIE',
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors
                                                                      .purple),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              'Financiado',
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  color: Colors
                                                                      .purple,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Text(
                                                              '60%',
                                                              style: TextStyle(
                                                                  fontSize: 14,
                                                                  color: Colors
                                                                      .purple),
                                                            )
                                                            // R\$ 1.000,00'),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: <Widget>[
                                                            new LinearPercentIndicator(
                                                              width: 110.0,
                                                              lineHeight: 14.0,
                                                              animation: true,
                                                              animationDuration:
                                                                  1000,
                                                              percent: 0.6,
                                                              linearStrokeCap:
                                                                  LinearStrokeCap
                                                                      .butt,
                                                              backgroundColor:
                                                                  Colors.green[
                                                                      50],
                                                              progressColor:
                                                                  Colors.green,
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          1.0), //aqui
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            1.0),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Row(
                                                          children: <Widget>[
                                                            //  Text('', style: TextStyle(fontSize: 16, color: Colors.purple),),
//                                                    Icon(Icons.search,color: Colors.purple,),
                                                            IconButton(
                                                                icon: Icon(
                                                                  Icons.search,
                                                                  color: Colors
                                                                      .purple,
                                                                ),
                                                                onPressed: () {
                                                                  //showCota(context);
                                                                  Navigator
                                                                      .push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                DetalheCota()),
                                                                  );
                                                                }),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              //Text('Status: '),
                                            ),
                                            /*ButtonTheme.bar(
                                             // make buttons use the appropriate styles for cards
                                             child: ButtonBar(
                                               children: <Widget>[
                                                 //Text('Atualizado: 08/10/19'),

                                                 IconButton(
                                                   icon: Icon(
                                                     Icons.search,
                                                     color: Colors.purple,
                                                   ),
                                                   onPressed: () => Navigator.pop(context),
                                                 ),
                                               ],
                                             ),
                                           ),*/
                                          ],
                                        ),
                                      );
                                      //_makeCard;
                                    },
                                  ),
                                ),
                              )

                              /* Card(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const ListTile(
                                    leading: Icon(Icons.album, size: 50),
                                    title: Text('Heart Shaker'),
                                    subtitle: Text('TWICE'),
                                  ),
                                ],
                              ),
                  ),*/
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
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 10.0),
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
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, left: 90.0),
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

  void showCota(BuildContext context) {
    // configura o button

    Widget okButton = FlatButton(
      child: Text(
        "OK",
        style: TextStyle(color: Colors.purple),
      ),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
      },
    );
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      //titlePadding: EdgeInsets.all(10.0),
      //contentPadding: EdgeInsets.all(0.0),
      // title: Text("#14545"),

      content: Column(
          //mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /*Divider(
              height: 1.0,
              color: Colors.grey,
            ),*/

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //children: getMyList()
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("#45687"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("Pós-Graduação - Havard"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("Economia - Cursando"),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: <Widget>[
                        Text("Valor a investir"),
                      ],
                    ),
                   /* Row(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'R\$1.500,00'),
                        ),
                      ],
                    ),*/


                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 1.0,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 2.0, bottom: 5.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(4.0),
                              topLeft: Radius.circular(4.0))),
                      child: Text("OK"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            )
          ]),
      actions: [
        okButton,
      ],
    );

    // exibe o dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }

  final List<String> myList = [
    "abc",
    "bcd",
    "cde",
    "def",
    "efg",
    "fgh",
    "ghi",
    "hij"
  ];

  List<Widget> getMyList() {
    return myList.map((x) {
      return Padding(
        padding: EdgeInsets.all(5.0),
        child: Row(children: <Widget>[Icon(Icons.supervisor_account), Text(x)]),
      );
    }).toList();
  }
}
