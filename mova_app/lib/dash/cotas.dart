import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Cotas extends StatefulWidget {
  @override
  _CotasState createState() => _CotasState();
}

class _CotasState extends State<Cotas> {
  bool toggle = false;
  Map<String, double> dataMap = Map();
  List<Color> colorList = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
  ];

  @override
  void initState() {
    super.initState();
    dataMap.putIfAbsent("Flutter", () => 5);
    dataMap.putIfAbsent("React", () => 3);
    dataMap.putIfAbsent("Xamarin", () => 2);
    dataMap.putIfAbsent("Ionic", () => 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: PieChart(
            dataMap: dataMap,
            animationDuration: Duration(milliseconds: 800),
            chartLegendSpacing: 30.0,
            chartRadius: MediaQuery.of(context).size.width / 3.7,
            //showChartValuesInPercentage: true,
            //showChartValues: true,
            //showChartValuesOutside: false,
            chartValueBackgroundColor: Colors.grey[200],
            colorList: colorList,
            //showLegends: true,
            legendPosition: LegendPosition.bottom,
            decimalPlaces: 1,
            //showChartValueLabel: true,
            initialAngle: 0,
            chartType: ChartType.ring,
            //showChartValuesOutside: true,
            chartValueStyle: defaultChartValueStyle.copyWith(
             color: Colors.blueGrey[900].withOpacity(0.9),
            ),
            //chartType: ChartType.disc,
          )

        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: togglePieChart,
        child: Icon(Icons.insert_chart),
      ),
    );
  }

  void togglePieChart() {
    setState(() {
      toggle = !toggle;
    });
  }
}

