import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:percent_indicator/percent_indicator.dart';
/*void main() {
  runApp(new DetalheCota());
}*/

class DetalheCota extends StatefulWidget {
  @override
  DetalheCotaState createState() => new DetalheCotaState();
}

class DetalheCotaState extends State<DetalheCota> {
  //String foos = 'One';
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    bool _isChecked = false;
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text(
            '#21145',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        body: Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Expanded(
                flex: 2,
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          //  Row(
                          //  children: <Widget>[
                          Text("#54678",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14)),
                          Text("#Pós-Graduação Exterior - Havard",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  height: 1.0,
                                  fontWeight: FontWeight.bold)),
                          Text("#Pós-Graduação - Cursando",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14, height: 1.0)),

                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Valor a Investir",
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),

                          Center(
                            child: Container(
                              //color: Colors.red,
                              width: 150,
                              height: 60,
                              child: TextField(
                                style: new TextStyle(color: Colors.green,fontSize: 16.0),
                                keyboardType: TextInputType.phone,
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  prefixText: "R\$",
                                  prefixStyle: TextStyle(fontSize: 16.0, color: Colors.green),
                                  border: InputBorder.none,
                                  hintText: "1500",
                                  hintStyle: TextStyle(fontSize: 16.0, color: Colors.green),
                                  suffixIcon: Icon(Icons.edit, color: Colors.purple,),
                                ),
                              ),
                            ),
                          ),


                          Center(
                            child: Container(
                              //margin: const EdgeInsets.only(top: 100.0),
                              child: ButtonTheme(
                                minWidth: 330,
                                height: 44.0,
                                child: RaisedButton(
                                  //onPressed: () => { print("pressionei o botão"), },
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },

                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(4.0)),

                                  child: Text(
                                    "ALTERAR VALOR",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ), //Text
                                  color: Colors.green,
                                ), //RaisedButton
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("GALERIA DE FOTOS",
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                          Divider(
                            height: 20,
                          ),
                          Center(
                            child: SizedBox(
                                height: 200.0,
                                width: 350.0,
                                child: Carousel(
                                  images: [
                                    NetworkImage(
                                        'https://d28htnjz2elwuj.cloudfront.net/wp-content/uploads/2018/08/09160725/JanisTobiasWerner_Shutterstock_FEAT_HarvardYard.jpg'),
                                    NetworkImage(
                                        'https://theclimatecenter.org/wp-content/uploads/2018/07/Harvard-1030x773.jpg'),
                                    NetworkImage(
                                        'http://2.bp.blogspot.com/-hO9lUsIt9DU/VeMBSBIRbII/AAAAAAAAAC0/TjHDk2MHZsw/s1600/hardvard.jpg')
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("INFORMAÇÕES DO FINANCIAMENTO",
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                          Divider(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[Text("Valor Solicitado",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))],
                              ),
                              Column(
                                children: <Widget>[Text("R\$ 40.000,00",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[Text("Pagamento Mensal",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                              Column(
                                children: <Widget>[Text("(36x) 455,00",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14))],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[Text("Carência",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                              Column(
                                children: <Widget>[Text("6 meses",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[Text("Rating",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))],
                              ),
                              Column(
                                children: <Widget>[Text("Rating B",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[Text("Taxa",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))],
                              ),
                              Column(
                                children: <Widget>[Text("17,78%",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[Text("Garantias & Estuturas",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold))],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[Text("Possui Avalista/Fiador",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                              Column(
                                children: <Widget>[Text("Sim",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),

                          Text("STATUS FINANCIAMENTO",
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                          Divider(
                            height: 20,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[Text("Valor em aberto",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))],
                              ),
                              Column(
                                children: <Widget>[Text("R\$ 20.000,00",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold))],
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text("30% Financiado",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              new LinearPercentIndicator(
                                width: 370.0,
                                lineHeight: 14.0,
                                animation: true,
                                animationDuration:
                                1000,
                                percent: 0.3,
                                center: Text("30%"),
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
                          SizedBox(
                            height: 20,
                          ),

                          Text("PERFIL",
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                          Divider(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[Text("Profissão",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                              Column(
                                children: <Widget>[Text("Gerente de T.I",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[Text("Ano de Admissão",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                              Column(
                                children: <Widget>[Text("2010",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[Text("Renda Atual",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                              Column(
                                children: <Widget>[Text("R\$3.000 - R\$6.000",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[Text("Renda Familiar Atual",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                              Column(
                                children: <Widget>[Text("R\$ 15.000 - 20.000",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                            ],
                          ),


                          SizedBox(
                            height: 20,
                          ),

                          Text("OUTRAS INFORMAÇÕES",
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                          Divider(
                            height: 20,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[Text("Graduação",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold))],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[Text("Instituição",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                              Column(
                                children: <Widget>[Text("Mackenzie",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                            ],
                          ),

                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[Text("Curso",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14))],
                        ),
                        Column(
                          children: <Widget>[Text("Análise de Sistemas",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14))],
                        ),
                      ],
                    ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[Text("Ano de Formação",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                              Column(
                                children: <Widget>[Text("2018",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                            ],
                          ),

                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[Text("Pós-Graduação",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.bold))],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[Text("Instituição",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14))],
                        ),
                        Column(
                          children: <Widget>[Text("N/A",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14))],
                        ),
                      ],
                    ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[Text("Restrições",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold))],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[Text("Consulta de Restritivos",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                              Column(
                                children: <Widget>[Text("Nada Consta",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[Text("Restritivos",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                              Column(
                                children: <Widget>[Text("R\$ 0,00",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14))],
                              ),
                            ],
                          ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[Text("Cursos",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14))],
                        ),
                        Column(
                          children: <Widget>[Text("N/A",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14))],
                        ),
                      ],
                    ),

                        ],
                        // ),
                        //],
                      ),
                    ),
                  ],
                ),
              ),
              new Divider(),
              new Container(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10.0, left: 200.0),
                  child: Center(
                    child: Container(
                      //margin: const EdgeInsets.only(top: 100.0),
                      child: ButtonTheme(
                        minWidth: 100,
                        height: 40.0,

                        child: FlatButton(
                          //onPressed: () => { print("pressionei o botão"), },
                          onPressed: () {
                            Navigator.of(context).pop();
                          },

                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(4.0)),

                          child: Text(
                            "FECHAR",
                            style:
                                TextStyle(color: Colors.purple, fontSize: 15),
                          ), //Text
                          color: Colors.transparent,
                        ), //RaisedButton
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
