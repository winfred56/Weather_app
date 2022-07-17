import './weather_api.dart';
import 'dart:convert';
import 'package:http/http.dart';

class WeatherApiClient{
  Future<Object> getWeather(String city) async {
    var data;
    try {
      Response response = await get(Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=9e1ff09eb702c3c6830d108f0727cf4a'));
      data = jsonDecode(response.body);
      return Weather.fromJSON(data);
    } on Exception catch (e) {
      return data = 'Failed to reac servers';
    }
  }
}