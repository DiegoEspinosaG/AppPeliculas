import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {

  final List<dynamic> peliculas;

  CardSwiper({@required this.peliculas});

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;    //Toma la info de las dimensiones del dispositivo

    return Container(

      padding: EdgeInsets.only(top: 10),      
      child: Swiper(

        layout: SwiperLayout.STACK,
        itemWidth: _screenSize.width * 0.7, //Para que abarque el 70% del ancho del dispo
        itemHeight: _screenSize.height * 0.5, //Para que abarque el 50% del alto del dispo
        itemBuilder: (BuildContext context,int index){
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network("http://via.placeholder.com/350x150",fit: BoxFit.cover),
          );
        },
        itemCount: peliculas.length,
        //pagination: new SwiperPagination(), //Para poner o quitar los puntitos de abajo que indican la cant de items
        //control: new SwiperControl(), //Para colocar flechas de: atras y adelante
        
      ),

    );

  }
}