import 'package:flutter/material.dart';
import 'package:new_ui_kit/utils/extensions/context_extension.dart';

class BackgroundImageView extends StatelessWidget {
  const BackgroundImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: context.height * (-0.050), //-45,
      child: Container(
          height: context.height * 0.7,
          width: context.width,
          decoration: BoxDecoration(
              image: const DecorationImage(image: AssetImage("assets/images/7.jpg"), fit: BoxFit.fill),
              border: Border.all(width: 0),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26, //New
                    blurRadius: 20.0,
                    offset: Offset(0, 25))
              ],
              borderRadius: const BorderRadius.only(bottomRight: Radius.elliptical(60, 45)),
              color: Colors.transparent)),
    );
  }
}
  /*
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -45,
      child: Container(
          height: context.height * 0.7,
          width: context.width,
          decoration: BoxDecoration(
              image: const DecorationImage(image: AssetImage("assets/images/7.jpg"), fit: BoxFit.fill),
              border: Border.all(width: 0),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26, //New
                    blurRadius: 20.0,
                    offset: Offset(0, 25))
              ],
              borderRadius: const BorderRadius.only(bottomRight: Radius.elliptical(60, 45)),
              color: Colors.transparent)),
    );
  }

*/
