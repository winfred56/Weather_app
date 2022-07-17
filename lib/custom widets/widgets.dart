import 'package:flutter/material.dart';

Widget currentWeather(IconData icon, String temperature, String city, String country){

  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Icon(
            icon,
            color:Colors.orange,
            size: 95
        ),
        const SizedBox(height: 30),
        Text(
          temperature,
          style: const TextStyle(
              fontSize: 52,
            fontWeight: FontWeight.w500
          ),
        ),
        const SizedBox(height: 10.0,),
        Text(
          city,
          style: const TextStyle(
              fontSize: 24,
            fontWeight: FontWeight.w300
          ),
        ),
        const SizedBox(height: 20.0,),
        Text(
          country,
          style: const TextStyle(
              fontSize: 28
          ),
        ),
        const SizedBox(height: 20.0,),
      ],
    ),
  );
}




Widget additionalInformation(String humidity, String pressure, String feelsLike ){
  const textFont  = TextStyle(fontWeight: FontWeight.w600, fontSize: 18,);
  const infoFont  = TextStyle(fontWeight: FontWeight.w400, fontSize: 18,);

  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:const [
                Text(
                  "Humidity",
                  style: textFont,
                ),
                SizedBox(height: 30.0),
                Text(
                  "Pressure",
                  style: textFont,
                ),
                SizedBox(height: 30.0),
                Text(
                  "Feels Like",
                  style: textFont,
                ),
                SizedBox(height: 30.0),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text(
                  "$humidity%",
                  style: infoFont,
                ),
                const SizedBox(height: 30.0),
                Text(
                  '$pressure hPa',
                  style: infoFont,
                ),
                const SizedBox(height: 30.0),
                Text(
                  feelsLike,
                  style: infoFont,
                ),
                const SizedBox(height: 30.0),

              ],
            ),
          ],
        ),
        const Divider(),

      ],
    ),

  );
}