import 'package:dio/dio.dart';
import 'package:weather_to_day/models/WeatherResponse.dart';
import 'package:weather_to_day/shared/constant/constant.dart';

class APIManger {
  static Dio? dio;
  String? URl;


  Map<String, dynamic>? queryParameters;

  APIManger({this.URl, this.queryParameters});

  void getWeather({
    Function()? beforsend,
    Function(Map<String, dynamic> data)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    dio?.get(URl!, queryParameters: queryParameters).then((value) {
      if (value != null) {
        onSuccess!(value.data);
      }
    }).catchError!((er) => onError!(er));
  }
}
///////////////////////////
class WeatherService {
  String city;

  WeatherService(this.city);

  getCutrentWeatherData({
    Function()? beforsend,
    Function(WeatherResponse weatherResponse)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    final url = '${ConstantApp.BASEURL}/weather?q=$city&${ConstantApp.APIKEY}';
    APIManger(URl: url, queryParameters: null).getWeather(
      beforsend: () => beforsend,
      onSuccess: (data) => onSuccess!(WeatherResponse.fromJson(data)),
      onError: (error) => onError!(error),
    );
  }
}
