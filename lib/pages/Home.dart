import 'package:flutter/material.dart';
import  '../widgets.dart';
import '../service/weather_api.dart';
import '../service/weather_api_client.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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


  }
Weather? data;
  Future<void> getData() async{
    data = await WeatherApiClient().getWeather('London');
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
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                currentWeather(
                    Icons.wb_sunny_rounded,
                    "${data!.temp} \u2103 ",
                    "${data!.city}",
                  "${data!.country}"
                ),
                Image.network(
                  "https://countryflagsapi.com/png/${data!.country}",
                  width: 60,
                  height: 50,
                ),
                const SizedBox(height: 10.0),
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
                additionalInformation("${data!.wind}", "${data!.humidity}", "${data!.pressure}", "${data!.feelsLike}"),
              ],
            );
          }
          else{
            return const Scaffold(
                backgroundColor: Colors.white,
                body: Center(
                  child: SpinKitCubeGrid(
                    color: Colors.orange,
                    size: 50.0,
                  ),
                )
            );
          }
          return Container();
        },
      )
    );
  }
}
