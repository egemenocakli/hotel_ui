import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:new_ui_kit/constants/app_constants.dart';
import 'package:new_ui_kit/pages/main/view/room_photos_view.dart';

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
      //backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xFF273748),
            Color(0xFFacb3b8),
            Color(0xFF273748),
          ],
        )),
        child: SafeArea(
            minimum: const EdgeInsets.only(top: 50),
            child: DefaultTabController(
              length: 5,
              child: Column(
                children: <Widget>[
                  ButtonsTabBar(
                    radius: 12,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                    borderColor: Colors.transparent,
                    elevation: 2,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    unselectedBackgroundColor: Colors.transparent,
                    unselectedLabelStyle: const TextStyle(color: Colors.white30),
                    labelStyle: const TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),
                    height: 56,
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
            )),
      ),
    );
  }
}
