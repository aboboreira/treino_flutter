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

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  bool isvisible = true;

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
            'Wallet',
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon( Icons.sim_card_alert,
                          color: Colors.white,),
                    ),
                    label: Text('Aguardando aplicação: R\$13.500,00', style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.blue,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Chip(
                    avatar: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon( Icons.sim_card_alert,
                        color: Colors.white,),
                    ),
                    label: Text('Resgate em andamento: R\$13.500,00', style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.green,
                  ),
                ],
              ),
              SizedBox(height: 20.0,),
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

          SizedBox(height: 20.0,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Total",style: TextStyle(color: Colors.grey),)
                ],
              ),
            Column(
        children: <Widget>[
        Text("R\$3.400,70",style: TextStyle(color: Colors.grey))
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
                      Text("Valor Reservado P2P",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("R\$3.000,00",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Valor Livre",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("R\$400,70",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 340,
                    height: 44.0,

                    child: FlatButton(
                      //onPressed: () => { print("pressionei o botão"), },
                      onPressed: () => Navigator.pop(context),

                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(4.0)),

                      child: Text(
                        "DEPOSITAR",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ), //Text
                      color: Colors.purple,
                    ), //RaisedButton
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 340,
                    height: 44.0,

                    child: FlatButton(
                      //onPressed: () => { print("pressionei o botão"), },
                      onPressed: () => Navigator.pop(context),

                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(4.0),
                      side: BorderSide(color: Colors.purple)
                      ),

                      child: Text(
                        "RESGATAR",
                        style: TextStyle(color: Colors.purple, fontSize: 14),
                      ), //Text
                      color: Colors.white,
                    ), //RaisedButton
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    //onPressed: () => { print("pressionei o botão"), },

                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(4.0)),

                    child: Text(
                      "VER BOLETOS ABERTOS",
                      style: TextStyle(
                          color: Colors.purple,
                          fontSize: 14,
                          fontFamily: "Montserrat"),
                    ), //Text
                    color: Colors.transparent,
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
