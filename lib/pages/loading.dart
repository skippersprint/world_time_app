import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    //make request
    Response response = await get(
        Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Kolkata'));
    Map data = jsonDecode(response.body);
    //print(data);

    //get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    String offset2 = data['utc_offset'].substring(4, 6);

    //print(datetime);

    //create datetime object

    DateTime now = DateTime.parse(datetime);
    //now.add(Duration(hours: ))
    now = now
        .add(Duration(hours: int.parse(offset), minutes: int.parse(offset2)));
    print(now);
  }

  //int counter = 0;
  @override
  void initState() {
    super.initState();
    getTime();
    print("initState ran");
  }

  @override
  Widget build(BuildContext context) {
    print("Build method ran");
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
