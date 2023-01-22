import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class RoomPhotosView extends StatefulWidget {
  const RoomPhotosView({super.key});

  @override
  State<RoomPhotosView> createState() => _RoomPhotosViewState();
}

class _RoomPhotosViewState extends State<RoomPhotosView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          //TODO: kaydırılabilir resim ekliycem buraya

          CarouselSlider(
            items: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Image(
                  image: AssetImage("assets/images/oda4.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Image(
                  image: AssetImage("assets/images/oda1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Image(
                  image: AssetImage("assets/images/oda3.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Image(
                  image: AssetImage("assets/images/oda2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ],
            options: CarouselOptions(
              height: 400.0,
              enableInfiniteScroll: true,
              pageSnapping: true,
              autoPlay: true,
              autoPlayCurve: Curves.easeIn,
            ),
          ),

/*
          const Image(
            image: AssetImage("assets/images/oda4.jpg"),
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(
            height: 10,
          ),
          const Image(
            image: AssetImage("assets/images/oda1.jpg"),
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(
            height: 10,
          ),
          const Image(
            image: AssetImage("assets/images/oda3.jpg"),
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(
            height: 10,
          ),
          const Image(
            image: AssetImage("assets/images/oda2.jpg"),
            fit: BoxFit.fitWidth,
          ),
          */
        ]),
      ),
    );
  }
}
