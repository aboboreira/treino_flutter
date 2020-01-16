import 'package:flutter/material.dart';
import 'package:mova_ap/dash/recebimentos.dart';
import 'package:mova_ap/portfolios/lista_cotas.dart';
import 'package:mova_ap/utils/detalhe_cota.dart';
import 'package:mova_ap/utils/filtros.dart';
import 'package:mova_ap/samples/carousel.dart';
import 'package:mova_ap/samples/list_horizontal.dart';
import 'package:mova_ap/samples/radio.dart';
import 'package:mova_ap/samples/dropbox.dart';
import 'package:mova_ap/samples/slide.dart';
import 'package:mova_ap/dash/analise_detalhada.dart';
import 'package:mova_ap/cadastro/cadastro_salvo.dart';
import 'package:mova_ap/dash/dash_investidor.dart';
import 'package:mova_ap/wallet/depositar.dart';
import 'package:mova_ap/wallet/resgatar.dart';
import 'package:mova_ap/wallet/wallet.dart';
import 'cadastro/form_codigo.dart';
import 'cadastro/post.dart';
import 'dash/cotas.dart';
import 'dash/cotas_disponiveis.dart';
import 'login.dart';
import 'package:mova_ap/cadastro/anexar_docs.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'MOVA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        fontFamily: 'Montserrat',
      ),

      home: Posta(),
      // home: Login(),
     // home: Codigo(),
    // home: Resgatar(),
    // home: Depositar(),
    // home: Wallet(),
    // home: DetalheCota(),
    // home: ListaCotas(),
    // home: ListHorizontal(),
    // home: Carousel(),
    );
  }



}