import 'package:charts_common/src/data/series.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mova_ap/cadastro/form_celular.dart';
import 'package:mova_ap/dash/cotas_disponiveis.dart';
import 'package:mova_ap/dash/dash_investidor.dart';
import 'package:mova_ap/dash/recebimentos.dart';

import 'package:mova_ap/dash/cotas.dart';

//import 'cotas_disponiveis.dart';
//import 'dash_investidor.dart';

class Resgatar extends StatefulWidget {
  @override
  _ResgatarState createState() => _ResgatarState();
}

class _ResgatarState extends State<Resgatar> {
  FocusNode myFocusNodeValue = new FocusNode();
  bool isEnable;

  @override
  void initState() {
    isEnable = true;
  }

  bool _validate = false;
  bool selected = false;
  static GlobalKey<FormState> _key = new GlobalKey<FormState>();
  String value;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();
    List<Series> seriesList;
    return DefaultTabController(
      //theme: ThemeData(fontFamily: 'Montserrat'),
      //debugShowCheckedModeBanner: false,
      length: 2,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.purple,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          titleSpacing: 1.0,
          title: const Text(
            'Resgatar',
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
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => CotasDisponiveis()));
                },
              ),
            ],
          ),
        ),
        //resizeToAvoidBottomInset: true,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Saldo na Wallet',
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Icon(
                    Icons.info,
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        "Total",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("R\$3.400,70", style: TextStyle(color: Colors.grey))
                    ],
                  )
                ],
              ),
              Divider(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Valor Reservado P2P",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("R\$3.000,00",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Valor Livre",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("R\$400,70",
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Conta Bancária Selecionada',
                    style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Banco Inter 077',
                        style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      Text(
                        'Gabriel Goldzwieg',
                        style: TextStyle(color: Colors.purple, fontSize: 12),
                      ),
                      Text(
                        'Ag: 0001  Conta: 1015588-9',
                        style: TextStyle(color: Colors.purple, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Form(
                  key: _key,
                  autovalidate: _validate,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        focusNode: myFocusNodeValue,
                        autofocus: false,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: "Valor a resgatar",
                          labelStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              color: myFocusNodeValue.hasFocus
                                  ? Colors.purple
                                  : Colors.black26),
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
                          value = val;
                        },
                      ),
                    ],
                  )),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 240,
                    height: 44.0,

                    child: FlatButton(
                      //onPressed: () => { print("pressionei o botão"), },
                      onPressed:
                          // => Navigator.pop(context),
                          // isEnable ? null : verificaCampo(),
                          () {
                        if (_key.currentState.validate()) {
                          print('1');
                        }
                      },

                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(4.0)),

                      child: Text(
                        "RESGATAR",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      //Text
                      color: Colors.green,
                      disabledColor: Colors.grey,
                    ), //RaisedButton
                  ),
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Para depositar via TED solicitar no Chat",
                    style: TextStyle(color: Colors.purple),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
