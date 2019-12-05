import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:carousel_slider/carousel_slider.dart';



class Carousel extends StatefulWidget {
  @override
  CarouselState createState() => CarouselState();
}

class CarouselState extends State<Carousel> {
  int _current = 0;


  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      height: 400.0,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      //reverse: false,
      //autoPlay: true,
      //autoPlayInterval: Duration(seconds: 3),
      //autoPlayAnimationDuration: Duration(milliseconds: 800),
      //autoPlayCurve: Curve.fastOutSlowIn,
     // pauseAutoPlayOnTouch: Duration(seconds: 10),
      enlargeCenterPage: true,
      //onPageChanged: callbackFunction,
      scrollDirection: Axis.horizontal,
      items: [1,2].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                //margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Colors.white
                ),
        //        child: Text('text $i', style: TextStyle(fontSize: 16.0),)
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Saldo investimentos P2P', style: TextStyle(fontSize: 16.0,color: Colors.purple),)
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
  }

