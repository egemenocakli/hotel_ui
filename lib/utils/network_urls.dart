import 'package:new_ui_kit/utils/network_configs.dart';

class NetworkUrls {
  final _baseUrl = NetworkConfig().baseUrl;

  //Controller
  //  final String _signUpController = "Login/";

  //URL
  final String _loginUrl = "login";

  //ENDPoint
  String get loginUrl => _baseUrl + _loginUrl;
}
