import './weather_api.dart';
import 'dart:convert';
import 'package:http/http.dart';

class WeatherApiClient{
  Future<Weather>? getWeather(String city) async {
    var response = await get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=9e1ff09eb702c3c6830d108f0727cf4a'));
    var data = jsonDecode(response.body);
    print(Weather.fromJSON(data).temp);
    print(Weather.fromJSON(data).city);
    return Weather.fromJSON(data);
  }
}