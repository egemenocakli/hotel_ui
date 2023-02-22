class NetworkConfig {
  NetworkConfig._();

  static final NetworkConfig _instance = NetworkConfig._();

  factory NetworkConfig() => _instance;

  String get baseUrl {
    return "https://reqres.in/api/";
  }
}
