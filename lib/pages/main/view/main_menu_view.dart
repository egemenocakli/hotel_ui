import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:new_ui_kit/constants/app_constants.dart';
import 'package:new_ui_kit/pages/main/view/room_photos_view.dart';
import 'package:new_ui_kit/pages/reservation/view/reservation_view.dart';
import 'package:new_ui_kit/utils/extensions/context_extension.dart';

class MainMenuView extends StatefulWidget {
  const MainMenuView({super.key});

  @override
  State<MainMenuView> createState() => _MainMenuViewState();
}

class _MainMenuViewState extends State<MainMenuView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: context.height * 1.5,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Color(0xFF212121),
                    Color(0xFF2e2e2e),
                    Color(0xFF212121),
                  ],
                ),
              ),
              child: DefaultTabController(
                length: 5,
                child: Stack(
                  children: [
                    tabbarView(),
                    Padding(
                      padding: const EdgeInsets.only(top: 28),
                      child: buildTabbar(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  TabBarView tabbarView() {
    return const TabBarView(
      children: <Widget>[
        RoomPhotosView(),
        Center(
          child: Icon(Icons.directions_transit),
        ),
        ReservationView(),
        Center(
          child: Icon(Icons.directions_transit),
        ),
        Center(
          child: Icon(Icons.directions_transit),
        ),
      ],
    );
  }

  ButtonsTabBar buildTabbar() {
    return ButtonsTabBar(
      radius: 12,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      borderColor: Colors.transparent,
      elevation: 2,
      decoration: const BoxDecoration(color: Colors.black45),
      unselectedBackgroundColor: Colors.black12,
      unselectedLabelStyle: const TextStyle(color: Colors.white30),
      labelStyle: const TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
      //height: 56,
      tabs: const [
        Tab(
          icon: Icon(Icons.photo),
          text: "Room Photos",
        ),
        Tab(
          icon: Icon(Icons.room_service),
          text: "Services",
        ),
        Tab(
          icon: Icon(Icons.timelapse_outlined),
          text: "Reservation",
        ),
        Tab(
          icon: Icon(Icons.event),
          text: "Event",
        ),
        Tab(
          icon: Icon(Icons.map_outlined),
          text: "Contact",
        ),
      ],
    );
  }
}
/*
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:new_ui_kit/constants/app_constants.dart';
import 'package:new_ui_kit/pages/main/view/room_photos_view.dart';
import 'package:new_ui_kit/utils/extensions/context_extension.dart';

class MainMenuView extends StatefulWidget {
  const MainMenuView({super.key});

  @override
  State<MainMenuView> createState() => _MainMenuViewState();
}

class _MainMenuViewState extends State<MainMenuView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1200,
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Color(0xFF273748),
                      Color(0xFF273748),
                    ],
                  )),
                ),
              ),
              Positioned(
                top: -45,
                child: Container(
                    height: context.height * 0.6,
                    width: context.width,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("assets/images/oda5.jpg"),
                        ),
                        //borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 0),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black45, //New
                              blurRadius: 20.0,
                              offset: Offset(0, 25))
                        ],
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.elliptical(200, 120), bottomRight: Radius.elliptical(800, 140)),
                        color: Colors.transparent)),
              ),
              Positioned(
                width: context.width,
                height: context.height,
                top: 40,
                child: DefaultTabController(
                  length: 5,
                  child: Column(
                    children: <Widget>[
                      ButtonsTabBar(
                        radius: 12,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                        borderColor: Colors.transparent,
                        elevation: 2,
                        decoration: const BoxDecoration(color: Colors.black45),
                        unselectedBackgroundColor: Colors.black12,
                        unselectedLabelStyle: const TextStyle(color: Colors.white30),
                        labelStyle: const TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
                        //height: 56,
                        tabs: const [
                          Tab(
                            icon: Icon(Icons.photo),
                            text: "Room Photos",
                          ),
                          Tab(
                            icon: Icon(Icons.room_service),
                            text: "Services",
                          ),
                          Tab(
                            icon: Icon(Icons.timelapse_outlined),
                            text: "Reservation",
                          ),
                          Tab(
                            icon: Icon(Icons.event),
                            text: "Event",
                          ),
                          Tab(
                            icon: Icon(Icons.map_outlined),
                            text: "Contact",
                          ),
                        ],
                      ),
                      const Expanded(
                        child: TabBarView(
                          children: <Widget>[
                            RoomPhotosView(),
                            Center(
                              child: Icon(Icons.directions_transit),
                            ),
                            Center(
                              child: Icon(Icons.directions_transit),
                            ),
                            Center(
                              child: Icon(Icons.directions_transit),
                            ),
                            Center(
                              child: Icon(Icons.directions_transit),
                            ),
                          ],
                        ),
                      ),
                    ],
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
*/