import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String? time = 'loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Kolkata', flag: 'germany.png', url: 'Asia/Kolkata');
    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
    print("initState ran");
  }

  @override
  Widget build(BuildContext context) {
    
    print("Build method ran");
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(50.0),
      child: Text(time!),
    ),
    floatingActionButton: FloatingActionButton(onPressed: setupWorldTime),
    );
  }
}
