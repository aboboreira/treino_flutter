import 'package:flutter/material.dart';
import 'package:flutter_charts/flutter_charts.dart';
import 'package:mova_ap/dash/relatorio_completo.dart';
import 'package:mova_ap/samples/CreateTable.dart';


class Recebimentos extends StatefulWidget {
  Recebimentos({Key key, this.title}) : super(key: key);

  String title;

  @override
  _RecebimentosState createState() => new _RecebimentosState();
}

/// State of the page.
class _RecebimentosState extends State<Recebimentos> {
  LineChartOptions _lineChartOptions;
  ChartOptions _verticalBarChartOptions;
  LabelLayoutStrategy _xContainerLabelLayoutStrategy;
  ChartData _chartData;

  _RecebimentosState() {
    defineOptionsAndData();
  }

  /* void defineOptionsAndData() {
    _lineChartOptions = new LineChartOptions();
    _verticalBarChartOptions = new VerticalBarChartOptions();
    _chartData = new ChartData();
    _chartData.dataRowsLegends = [
      "Spring",
      "Summer",
      "Fall",
      "Winter"];
    _chartData.dataRows = [
      [10.0, 20.0,  5.0,  30.0,  5.0,  20.0, ],
      [30.0, 60.0, 16.0, 100.0, 12.0, 120.0, ],
      [25.0, 40.0, 20.0,  80.0, 12.0,  90.0, ],
      [12.0, 30.0, 18.0,  40.0, 10.0,  30.0, ],
    ];
    _chartData.xLabels =  ["Wolf", "Deer", "Owl", "Mouse", "Hawk", "Vole"];
    _chartData.assignDataRowsDefaultColors();
    // Note: ChartOptions.useUserProvidedYLabels default is still used (false);
  }*/

  void defineOptionsAndData() {
    _lineChartOptions = new LineChartOptions();
    _verticalBarChartOptions = new VerticalBarChartOptions();
    _chartData = new ChartData();
    _chartData.dataRowsLegends = ["R\$"];
    _chartData.dataRows = [
      [10.0, 1.0, 3.0, 4.0, 5.0],
      [3.0, 9.0, 10.0, 1.0, 5.8],
    ];
    _chartData.xLabels = [
      "Ago",
      "Set",
      "Out",
      "Nov",
      "Dez",
      "Jan",
      "Fev",
      "Mar",
      "Abr"
    ];
    _chartData.dataRowsColors = [
      Colors.purple,
      Colors.grey,
    ];
  }

  /*void defineOptionsAndData() {
    // This example shows user defined Y Labels.
    //   When setting Y labels by user, the dataRows value scale
    //   is irrelevant. User can use for example interval <0, 1>,
    //   <0, 10>, or any other, even negative ranges. Here we use <0-10>.
    //   The only thing that matters is  the relative values in the data Rows.

    // Note that current implementation sets
    // the minimum of dataRows range (1.0 in this example)
    // on the level of the first Y Label ("Ok" in this example),
    // and the maximum  of dataRows range (10.0 in this example)
    // on the level of the last Y Label ("High" in this example).
    // This is not desirable, we need to add a userProvidedYLabelsBoundaryMin/Max.
    _lineChartOptions = new LineChartOptions();
   // _lineChartOptions.useUserProvidedYLabels = true; // use labels below
    _verticalBarChartOptions = new VerticalBarChartOptions();
    _chartData = new ChartData();
    _chartData.dataRowsLegends = [
      "Java",
      "Dart",
      "Python",
      "Newspeak"];
    _chartData.dataRows = [
      [9.0, 4.0,  3.0,  9.0, ],
      [7.0, 6.0,  7.0,  6.0, ],
      [4.0, 9.0,  6.0,  8.0, ],
      [3.0, 9.0, 10.0,  1.0, ],
    ];
    _chartData.xLabels =  ["Fast", "Readable", "Novel", "Use"];
    _chartData.dataRowsColors = [
      Colors.blue,
      Colors.yellow,
      Colors.green,
      Colors.amber,
    ];

    //_lineChartOptions.useUserProvidedYLabels=true;

    _chartData.yLabels = [
      "Ok",
      "Higher",
      "High",

    ];
  }*/

  set lineChartOptions(LineChartOptions value) {
    _lineChartOptions = value;
  }

  void _chartStateChanger() {
    setState(() {
      defineOptionsAndData();
    });
  }

  @override
  Widget build(BuildContext context) {
    defineOptionsAndData();

    VerticalBarChart verticalBarChart = new VerticalBarChart(
      painter: new VerticalBarChartPainter(),
      container: new VerticalBarChartContainer(
        chartData: _chartData, // @required
        chartOptions: _verticalBarChartOptions, // @required
        //xContainerLabelLayoutStrategy:
        // _xContainerLabelLayoutStrategy, // @optional
      ),
    );

    return new Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'vvvvvvvv:',
            ),
            new Expanded(
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  new Text('>>>'),
                  new Expanded(
                    child: verticalBarChart, // verticalBarChart, lineChart
                  ),
                  new Text('<<<<<<'), // labels do overlap, legend NOT present
                ],
              ),
            ),
            //new Text('^^^^^^:'),
            new RaisedButton(
              onPressed: () {
                /* */
                showReport(context);
              },

              shape: Border.all(color: Colors.purple, style: BorderStyle.solid),
              child: Text(
                "RELATÓRIO COMPLETO",
                style: TextStyle(color: Colors.purple, fontSize: 15),
              ), //Text
              color: Colors.white,
            ),
          ],
        ),
      ),
      /*  floatingActionButton: new FloatingActionButton(
        onPressed: _chartStateChanger,
        tooltip: 'New Random Data',
        child: new Icon(Icons.add),
      ),*/
    );
  }

  showReport(BuildContext context) {
    // configura o button
    Widget okButton = FlatButton(
      child: Text("OK", style: TextStyle(color: Colors.purple),),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(

      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 0.0, right: 0.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Investimento Original",
                      style: TextStyle(
                          color: Colors.purple,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          letterSpacing: 0.5),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "R\$1000.0000,00",
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
                              Text(
                                "Total Recebido",
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
                              Text(
                                "R\$40.0000,00",
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
                              Text(
                                "Total a Receber",
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
                              Text(
                                "R\$60.0000,00",
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
        ],
      ),
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



}
