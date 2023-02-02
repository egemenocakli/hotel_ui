import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:new_ui_kit/constants/app_constants.dart';
import 'package:new_ui_kit/pages/main/view/background_view.dart';
import 'package:new_ui_kit/utils/extensions/context_extension.dart';

class RoomPhotosView extends StatefulWidget {
  const RoomPhotosView({super.key});

  @override
  State<RoomPhotosView> createState() => _RoomPhotosViewState();
}

class _RoomPhotosViewState extends State<RoomPhotosView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      child: Stack(children: [
        const BackgroundView(),
        Positioned(
            height: context.height,
            top: context.height * 0.72,
            width: context.width,
            child: Container(
              color: Colors.black26,
              child: GridView.count(
                controller: ScrollController(keepScrollOffset: false),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 3,
                padding: const EdgeInsets.only(left: 10, right: 10),
                children: const [
                  RoomPhotos(assetImage: "assets/images/oda4.jpg"),
                  RoomPhotos(assetImage: "assets/images/oda7.jpg"),
                  RoomPhotos(assetImage: "assets/images/oda5.jpg"),
                  RoomPhotos(assetImage: "assets/images/oda1.jpg")
                ],
              ),
            )),
        Positioned(
            left: context.height * 0.1 / 3,
            top: context.height * 0.6,
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF282A3A),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.elliptical(30, 30), bottomRight: Radius.elliptical(30, 30)),
                  border: Border.all(color: Colors.white30, strokeAlign: BorderSide.strokeAlignCenter, width: 1.2)),
              height: context.height * 0.1 / 1.1,
              width: context.width * 0.30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "600₺",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                  Text(
                    "Daily",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
            )),

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
    );
  }
}

class RoomPhotos extends StatelessWidget {
  final String assetImage;
  const RoomPhotos({Key? key, required this.assetImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showImageViewer(context, Image.asset(assetImage).image, swipeDismissible: true, doubleTapZoomable: true);
      },
      child: Container(
          height: 100,
          width: 200,
          decoration: CustomBoxDeco().copyWith(
            image: DecorationImage(
              image: AssetImage(assetImage),
            ),
          )),
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
    return SizedBox(
      width: context.width,
      child: Stack(children: [
        Positioned(
          height: context.height,
          top: 200,
          width: context.width,
          child: CarouselSlider(
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
              height: context.height * 0.3,
              enableInfiniteScroll: true,
              pageSnapping: true,
              autoPlay: true,
              autoPlayCurve: Curves.easeIn,
            ),
            disableGesture: false,
          ),
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
    );
  }
}

*/