import 'package:flutter/material.dart';

class City extends StatefulWidget {
  const City({Key? key}) : super(key: key);

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  final _textController = TextEditingController();
  String newCity = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Edit Location",
          style: TextStyle(

            fontSize: 26,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        // backgroundColor: Colors.white70,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: Center(
              child: Text(
                "$newCity",
                style: const TextStyle(
                  fontSize: 28
                ),
              ),
            )),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Enter City',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(onPressed: (){
                  _textController.clear();
                }, icon: const Icon(Icons.clear))
              ),
            ),
            MaterialButton(onPressed: (){
              setState((){
                newCity = _textController.text;
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => Home(newLocation:newCity))
                // );
              });
            },
              color: Colors.blue,
              child: const Text(
                'Edit',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}


