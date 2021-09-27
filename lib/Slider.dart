import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Slide extends StatefulWidget {
  const Slide({Key? key}) : super(key: key);

  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  final List<String> imageList = [

    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwh-TCpZDcIIPe1-triEVTOoHbRoqeL4-LIg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwh-TCpZDcIIPe1-triEVTOoHbRoqeL4-LIg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwh-TCpZDcIIPe1-triEVTOoHbRoqeL4-LIg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwh-TCpZDcIIPe1-triEVTOoHbRoqeL4-LIg&usqp=CAU",

  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          autoPlay: true,
        ),
        items: imageList.map((e) => ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.network(e,
                width: 1050,
                height: 350,
                fit: BoxFit.cover,)
            ],
          ) ,
        )).toList(),
      ),
    );
  }
}

