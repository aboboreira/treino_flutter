import 'package:flutter/material.dart';

void main() {
  runApp(new ExpansionTileSample());
}

class ExpansionTileSample extends StatefulWidget {
  @override
  ExpansionTileSampleState createState() => new ExpansionTileSampleState();
}

class ExpansionTileSampleState extends State<ExpansionTileSample> {
  String foos = 'One';
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    bool _isChecked = false;
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text(
            'PERFIL DE RISCO',
            style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontSize: 16),
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
                    ExpansionTile(
                        initiallyExpanded: true,
                        title: new Text(
                          "Rating",
                          style: TextStyle(
                              color: isExpanded ? Colors.purple : Colors.grey),
                        ),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        onExpansionChanged: (bool expanding) =>
                            setState(() => this.isExpanded = expanding),
                        trailing: isExpanded
                            ? Icon(
                                Icons.keyboard_arrow_up,
                                color: Colors.purple,
                              )
                            : Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.grey,
                              ),
                        children: <Widget>[
                          new ListTile(
                            title: Row(
                              children: <Widget>[
                                Checkbox(
                                  value: _isChecked,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _isChecked = true;
                                    });
                                  },
                                  activeColor: Colors.black,
                                ),
                                Text('A (Retorno 12,6% aa)'),
                              ],
                            ),
                            onTap: () {
                              setState(() {
                                //this.foos = 'One';
                                _isChecked = false;
                              });
                            },
                          ),
                          new ListTile(
                            title: Row(
                              children: <Widget>[
                                Checkbox(
                                  value: _isChecked,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _isChecked = true;
                                    });
                                  },
                                  activeColor: Colors.black,
                                ),
                                Text('B (Retorno 16,4% aa)'),
                              ],
                            ),
                            onTap: () {
                              /*setState(() {
                        this.foos = 'One';
                      });*/
                            },
                          ),
                        ]),
                    ExpansionTile(
                        initiallyExpanded: true,
                        title: new Text(
                          "Pessoa Jurídica",
                          style: TextStyle(
                              color: isExpanded ? Colors.purple : Colors.grey),
                        ),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        onExpansionChanged: (bool expanding) =>
                            setState(() => this.isExpanded = expanding),
                        trailing: isExpanded
                            ? Icon(
                                Icons.keyboard_arrow_up,
                                color: Colors.purple,
                              )
                            : Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.grey,
                              ),
                        children: <Widget>[
                          new ListTile(
                            title: Row(
                              children: <Widget>[
                                Checkbox(
                                  value: _isChecked,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _isChecked = true;
                                    });
                                  },
                                  activeColor: Colors.black,
                                ),
                                Text('Financiamento Empresas'),
                              ],
                            ),
                            onTap: () {
                              /*setState(() {
                        this.foos = 'One';
                      });*/
                            },
                          ),
                        ]),
                    ExpansionTile(
                        initiallyExpanded: true,
                        title: Row(
                          children: <Widget>[
                            new Text(
                              "Pessoa Física",
                              style: TextStyle(
                                  color:
                                      isExpanded ? Colors.purple : Colors.grey),
                            ),
                          ],
                        ),
                        backgroundColor:
                            Theme.of(context).accentColor.withOpacity(0.025),
                        onExpansionChanged: (bool expanding) =>
                            setState(() => this.isExpanded = expanding),
                        trailing: isExpanded
                            ? Icon(
                                Icons.keyboard_arrow_up,
                                color: Colors.purple,
                              )
                            : Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.grey,
                              ),
                        children: <Widget>[
                          new ListTile(
                            title: Row(
                              children: <Widget>[
                                Checkbox(
                                  value: _isChecked,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _isChecked = true;
                                    });
                                  },
                                  activeColor: Colors.black,
                                ),
                                Text('Pós-Graduação no Brasil'),
                              ],
                            ),
                            onTap: () {
                              /*setState(() {
                        this.foos = 'One';
                      });*/
                            },
                          ),
                          new ListTile(
                            title: Row(
                              children: <Widget>[
                                Checkbox(
                                  value: _isChecked,
                                  onChanged: (bool value) {
                                    setState(() {
                                      _isChecked = true;
                                    });
                                  },
                                  activeColor: Colors.black,
                                ),
                                Text('Pós-Graduação no Exterior'),
                              ],
                            ),
                            onTap: () {
                              /*setState(() {
                        this.foos = 'One';
                      });*/
                            },
                          ),
                        ]),
                  ],
                ),
              ),
              new Divider(),
              new Container(
               child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Center(
                    child:Container(
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
                              borderRadius: new BorderRadius.circular(4.0)),

                          child: Text(
                            "APLICAR",
                            style:
                            TextStyle(color: Colors.white, fontSize: 15),
                          ), //Text
                          color: Colors.green,
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
