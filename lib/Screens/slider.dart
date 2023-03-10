// ignore_for_file: prefer_const_constructors, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class slider extends StatelessWidget {
  const slider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Slider(),
    );
  }
}

class Slider extends StatefulWidget {
  const Slider({super.key});

  @override
  State<Slider> createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  List<Widget> hehe = [];
  _SliderState() {
    hehe = builderImage();
    print(hehe);
  }

  int activeIndex = 0;
  @override
  final imageslider = [
    'images/tasqrslider1.png',
    'images/tasqrslider2.png',
    'images/tasqrslider3.png',
    'images/tasqrslider4.png'
  ];

  List<Widget> builderImage() {
    List<Widget> xero = [];
    for (String x in imageslider) {
      Widget abcd = Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        color: Colors.grey,
        child: Image.asset(
          x,
          // imageslider,
          fit: BoxFit.cover,
        ),
      );

      xero.add(abcd);
    }
    return xero;
  }

  Widget buildImage(String urlimage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        color: Colors.grey,
        child: Image.asset(
          'images/tasqrslider1.png',
          // imageslider,
          fit: BoxFit.cover,
        ),
      );
  // Widget buildIndicator() => AnimatedSmoothIndicator();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 22, 39),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 700.0,
                // autoPlay: true,
                enableInfiniteScroll: false,
                // pageSnapping: false,
                // reverse: true,
                autoPlayInterval: Duration(seconds: 2),
                viewportFraction: 0.8,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                },
              ),
              items: hehe,
            ),

            // CarouselSlider.builder(
            //   options: CarouselOptions(
            //     height: 600.0,
            //     autoPlay: true,
            //     enableInfiniteScroll: false,
            //     // pageSnapping: false,
            //     // reverse: true,
            //     autoPlayInterval: Duration(seconds: 2),
            //     viewportFraction: 1,
            //     enlargeCenterPage: true,
            //     onPageChanged: (index, reason) {
            //       setState(() {
            //         activeIndex = index;
            //       });
            //     },
            //   ),
            //   itemCount: imageslider.length,
            //   itemBuilder: ((context, index, realIndex) {
            //     final urlimage = imageslider[index];
            //     return buildImage(urlimage, index);
            //   }),
            // ),
          ],
        ),
      ),
    );
  }
}
