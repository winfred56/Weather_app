import 'package:flutter/material.dart';
import  '../widgets.dart';
import '../service/weather_api.dart';
import '../service/weather_api_client.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WeatherApiClient().getWeather('London');

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(
              fontSize: 28,
              color: Colors.black
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.menu,
              color: Colors.black,
              size: 30,)
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          currentWeather(
              Icons.wb_sunny_rounded,
              "32.2 degrees",
              "Kumasi"
          ),
          const Text(
            "Additional Information",
            style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey
            ),
          ),
          const Divider(),
          const SizedBox(height: 20.0),
          additionalInformation("24.4", "13.56", "23.7", "19.45"),
        ],
      ),
    );
  }
}
