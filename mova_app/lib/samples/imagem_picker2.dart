import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Picker Demo',
      home: MyHomePage(title: 'Image Picker Example'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State {
  File frente_doc;
  File verso_doc;
  File comp_residencia;
  File selfie_doc;

  Future getFrenteDocFromCam() async {
    // for camera
    var cam_frente_doc = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      frente_doc = cam_frente_doc;
    });
    Navigator.of(context).pop();
  }

  Future getFrenteDocFromGallery() async {
    // for gallery
    var gal_frente_doc = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      frente_doc = gal_frente_doc;
    });
  }

  Future getVersoDocFromCam() async {
    // for camera
    var cam_verso_doc = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      verso_doc = cam_verso_doc;
    });
  }

  Future getVersoDocFromGallery() async {
    // for gallery
    var gal_verso_doc = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      verso_doc = gal_verso_doc;
    });
  }

  Future getCompResidenciaFromCam() async {
    // for camera
    var cam_comp_residencia = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      comp_residencia = cam_comp_residencia ;
    });
  }

  Future getCompResidenciaFromGallery() async {
    // for gallery
    var gal_comp_residencia = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      comp_residencia = gal_comp_residencia;
    });
  }

  Future getSelfieFromCam() async {
    // for camera
    var cam_selfie = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      selfie_doc = cam_selfie  ;
    });
  }

  Future getSefieFromGallery() async {
    // for gallery
    var gal_selfie = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      selfie_doc = gal_selfie;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Image Picker Example'),
        ),
        body: ListView(
          children: [
            /*Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: Center(
                child: frente_doc == null
                    ? Text('Sem Frente Doc')
                    : Image.file(frente_doc),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: Center(
                child: verso_doc == null
                    ? Text('Sem Verso Doc')
                    : Image.file(verso_doc),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: Center(
                child: comp_residencia == null
                    ? Text('Sem comprovante')
                    : Image.file(comp_residencia),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200.0,
              child: Center(
                child: selfie_doc == null
                    ? Text('Sem selfie')
                    : Image.file(selfie_doc),
              ),
            ),*/

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.idCard, size: 80),
                          SizedBox(height: 20),
                          Text('Frente \n RG ou CNH'),
                        ],
                      ),
                    ),
                    shape: new RoundedRectangleBorder(
                        borderRadius:
                        new BorderRadius.circular(5.0),
                        side: BorderSide(color: Colors.black)
                    ),
                    onPressed: (){showAlertDialog1(context);}
                ),

                FlatButton(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.indent, size: 80),
                          SizedBox(height: 20),
                          Text('Verso \n RG ou CNH'),
                        ],
                      ),
                    ),
                    shape: new RoundedRectangleBorder(
                        borderRadius:
                        new BorderRadius.circular(5.0),
                        side: BorderSide(color: Colors.black)
                    ),
                    onPressed: (){showAlertDialog2(context);}
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.fileContract, size: 80),
                          SizedBox(height: 20),
                          Text('Comp de \n Residência'),
                        ],
                      ),
                    ),
                    shape: new RoundedRectangleBorder(
                        borderRadius:
                        new BorderRadius.circular(5.0),
                        side: BorderSide(color: Colors.black)
                    ),
                    onPressed: (){showAlertDialog3(context);}
                ),

                FlatButton(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.portrait, size: 80),
                          SizedBox(height: 20),
                          Text('Selfie \n com doc '),
                        ],
                      ),
                    ),
                    shape: new RoundedRectangleBorder(
                        borderRadius:
                        new BorderRadius.circular(5.0),
                        side: BorderSide(color: Colors.black)
                    ),
                    onPressed: (){showAlertDialog4(context);}
                ),
              ],
            ),
          ],
        ));
  }

  showAlertDialog1(BuildContext context) {
    Widget cancelaButton = FlatButton(
      child: Text("Camera"),
      onPressed:
      getFrenteDocFromCam,
    );
    Widget continuaButton = FlatButton(
      child: Text("Galeria"),
      onPressed: getFrenteDocFromGallery,
    );
    //configura o AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Escolha"),
      content: //Text("Deseja continuar aprendendo Flutter ?"),
      Row(
        children: <Widget>[
          //Text("Deseja continuar aprendendo Flutter ?"),
          cancelaButton,
          continuaButton,
        ],
      ),
      /*actions: [
        cancelaButton,
        continuaButton,
      ],*/
    );
    //exibe o diálogo
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialog2(BuildContext context) {
    Widget cancelaButton = FlatButton(
      child: Text("Camera"),
      onPressed: getVersoDocFromCam,
    );
    Widget continuaButton = FlatButton(
      child: Text("Galeria"),
      onPressed: getVersoDocFromGallery,
    );
    //configura o AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Escolha"),
      content: //Text("Deseja continuar aprendendo Flutter ?"),
      Row(
        children: <Widget>[
          //Text("Deseja continuar aprendendo Flutter ?"),
          cancelaButton,
          continuaButton,
        ],
      ),
    );
    //exibe o diálogo
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialog3(BuildContext context) {
    Widget cancelaButton = FlatButton(
      child: Text("Camera"),
      onPressed: getCompResidenciaFromCam,
    );
    Widget continuaButton = FlatButton(
      child: Text("Galeria"),
      onPressed: getCompResidenciaFromGallery,
    );
    //configura o AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Escolha"),
      content: //Text("Deseja continuar aprendendo Flutter ?"),
      Row(
        children: <Widget>[
          //Text("Deseja continuar aprendendo Flutter ?"),
          cancelaButton,
          continuaButton,
        ],
      ),
    );
    //exibe o diálogo
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialog4(BuildContext context) {
    Widget cancelaButton = FlatButton(
      child: Text("Camera"),
      onPressed: getSelfieFromCam,
    );
    Widget continuaButton = FlatButton(
      child: Text("Galeria"),
      onPressed: getSefieFromGallery,
    );
    //configura o AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Escolha"),
      content: //Text("Deseja continuar aprendendo Flutter ?"),
      Row(
        children: <Widget>[
          //Text("Deseja continuar aprendendo Flutter ?"),
          cancelaButton,
          continuaButton,
        ],
      ),
    );
    //exibe o diálogo
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
