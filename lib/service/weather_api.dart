import 'dart:convert';
import 'package:http/http.dart';

class Weather{
  String? city;
  double? temp;
  double? wind;
  double? feelsLike;
  int? humidity;
  int? pressure;

  Weather({this.city});

  Weather.fromJSON(Map<String, dynamic>json){
    city = json['name'];
    temp = json['main']['temp'];
    wind = json['main']['wind'];
    feelsLike = json['main']['feels_like'];
    humidity = json['main']['humidity'];
    pressure = json['main']['pressure'];
  }

  // Future<Weather>? getWeather() async {
  //   var response = await get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$city&appid=9e1ff09eb702c3c6830d108f0727cf4a'));
  //   var data = jsonDecode(response.body);
  //   print(Weather.fromJSON(data));
  //   return Weather.fromJSON(data);
  // }

}