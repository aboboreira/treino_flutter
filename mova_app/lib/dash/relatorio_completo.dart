import 'package:charts_common/src/data/series.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mova_ap/dash/recebimentos.dart';



class RelatorioCompleto extends StatefulWidget {
  @override
  _RelatorioCompletoState createState() => _RelatorioCompletoState();
}

class _RelatorioCompletoState extends State<RelatorioCompleto> {
  bool isvisible = true;

  @override
  Widget build(BuildContext context) {
    List<Series> seriesList;
    return DefaultTabController(
      //theme: ThemeData(fontFamily: 'Montserrat'),
      //debugShowCheckedModeBanner: false,
      length: 2,
      child: Scaffold(
        /*appBar: AppBar(
          bottom:TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.purple,
            labelColor: Colors.purple,
            tabs: <Widget>[
              Tab(child: Text('COTAS'),),

              Tab(child: Text('RECEBIMENTOS'),),
            ],
          ),
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back_ios,color: Colors.purple,)) ,
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
              icon: Icon(Icons.menu),
            ),
          ],
        ),*/
        //resizeToAvoidBottomInset: true,
        body: Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 50.0, left: 16.0, right: 24.0),
                child: new Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("Investimento Original",
                            style: TextStyle(
                                color: Colors.purple,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                            letterSpacing: 0.5),),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("R\$1000.0000,00",
                      style: TextStyle(
                          color: Colors.purple,
                          fontFamily: "Montserrat",
                          fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Total Recebido",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text("R\$40.0000,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontFamily: "Montserrat",
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Total a Receber",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text("R\$60.0000,00",
                                      style: TextStyle(
                                          color: Colors.purple,
                                          fontFamily: "Montserrat",
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        children: <Widget>[
                          Text("Fluxo de Pagamento Passado",
                            style: TextStyle(
                                color: Colors.purple,
                                fontFamily: "Montserrat",
                                fontSize: 14),),
                        ],
                      ),
                      SizedBox(height: 20),
                      criarTabela(),
                      SizedBox(height: 40),
                      Row(
                        children: <Widget>[
                          Text("Fluxo de Pagamento Futuro",
                            style: TextStyle(
                                color: Colors.purple,
                                fontFamily: "Montserrat",
                                fontSize: 14),),
                        ],
                      ),
                      SizedBox(height: 20),
                      criarTabela(),
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
                              /* Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Anexo()),
                              );*/
                            },

                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(4.0)),

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
                              /*  Navigator.push(
                               context,
                                MaterialPageRoute(
                                    builder: (context) => Anexo()),
                              );*/
                            },

                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(4.0)),

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

  criarTabela() {
    return Table(
      defaultColumnWidth: FixedColumnWidth(90.0),
      border: TableBorder(
        horizontalInside: BorderSide(
          color: Colors.grey,
          style: BorderStyle.solid,
          width: 0.5,
        ),
        verticalInside: BorderSide(
          color: Colors.black,
          style: BorderStyle.none,
          width: 0.5,
        ),
      ),
      children: [
        _criarLinhaTable("Mês, Pago, IR ,Valor Líquido"),
        _criarLinhaTable("Janeiro-19, R\$ 0.00, R\$ 0.00, R\$ 0.00"),
        _criarLinhaTable("Fevereiro-19, R\$ 0.00, R\$ 0.00, R\$ 0.00"),
        _criarLinhaTable("Março-19, R\$ 0.00, R\$ 0.00, R\$ 0.00"),
      ],
    );
  }

  _criarLinhaTable(String s) {
    return TableRow(
      //decoration: BoxDecoration(color: Colors.grey),
      children: s.split(',').map((name) {
        return Container(
          alignment: Alignment.topLeft,
          child: Text(
            name,
            style: TextStyle(fontSize: 12.0, color: Colors.grey),
          ),
          padding: EdgeInsets.all(2.0),
        );
      }).toList(),
    );
  }
}


