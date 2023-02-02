import 'package:flutter/material.dart';
import 'package:new_ui_kit/utils/extensions/context_extension.dart';

class RoomPhotosView extends StatefulWidget {
  const RoomPhotosView({super.key});

  @override
  State<RoomPhotosView> createState() => _RoomPhotosViewState();
}

class _RoomPhotosViewState extends State<RoomPhotosView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          child: Container(
              height: context.height * 0.4,
              width: context.width,
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/oda4.jpg")))),
        ),
        Positioned(
          top: 50,
          child: Container(
              height: context.height * 0.4,
              width: context.width,
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/oda4.jpg")))),
        ),
      ],
    );
  }
}



/*
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:new_ui_kit/utils/extensions/context_extension.dart';

class RoomPhotosView extends StatefulWidget {
  const RoomPhotosView({super.key});

  @override
  State<RoomPhotosView> createState() => _RoomPhotosViewState();
}

class _RoomPhotosViewState extends State<RoomPhotosView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 1500,
        child: Stack(children: [
          CarouselSlider(
            items: const [
              SizedBox(
                child: Image(
                  image: AssetImage("assets/images/oda1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                child: Image(
                  image: AssetImage("assets/images/oda2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                child: Image(
                  image: AssetImage("assets/images/oda3.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                child: Image(
                  image: AssetImage("assets/images/oda4.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                child: Image(
                  image: AssetImage("assets/images/oda5.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ],
            options: CarouselOptions(
              enlargeCenterPage: true,
              pauseAutoPlayOnTouch: true,
              height: context.height * 0.6,
              enableInfiniteScroll: true,
              pageSnapping: true,
              autoPlay: true,
              autoPlayCurve: Curves.easeIn,
            ),
            disableGesture: false,
          ),
/*
          Positioned(
            top: 500,
            height: context.height * 0.4,
            width: context.width,
            child: Container(
              //color: Colors.transparent,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.transparent, width: 2, style: BorderStyle.solid),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              //height: context.height * 0.4,
              //width: context.width * 0.940,

              child: Column(
                children: const [
                  Text(
                    "All features",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                  Text(
                      "Oda özellikleri:\n Balkon\n Düz ekran\n TV\n Klima\n Merkezi ısıtma\n Oda Kasası\n Televizyon Uydu TV\n Wi-Fi Ücretsiz WiFi (odada)\n Ütü Masası",
                      style: TextStyle(color: Colors.white, fontSize: 22)),
                ],
              ),
            ),
          ),
          */
        ]),
      ),
    );
  }
}

*/