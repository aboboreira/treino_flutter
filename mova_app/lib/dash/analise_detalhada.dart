import 'package:charts_common/src/data/series.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mova_ap/cadastro/form_celular.dart';
import 'package:mova_ap/dash/recebimentos.dart';

import 'package:mova_ap/dash/cotas.dart';

import 'cotas_disponiveis.dart';
import 'dash_investidor.dart';

class AnaliseDetalhada extends StatefulWidget {
  @override
  _AnaliseDetalhadaState createState() => _AnaliseDetalhadaState();
}

class _AnaliseDetalhadaState extends State<AnaliseDetalhada> {
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
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.purple,
            labelColor: Colors.purple,
            tabs: <Widget>[
              Tab(
                child: Text('COTAS'),
              ),
              Tab(
                child: Text('RECEBIMENTOS'),
              ),
            ],
          ),
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
            'Análise Detalhada',
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
        body: TabBarView(
          children: [
            Cotas(),
            Recebimentos(),
          ],
        ),
      ),
    );
  }
}
