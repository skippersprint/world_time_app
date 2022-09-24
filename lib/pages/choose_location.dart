import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(location: 'London', flag: 'gb.png', url: 'Europe/London'),
    WorldTime(location: 'New York', flag: 'us.png', url: 'America/New_York'),
    WorldTime(location: 'Berlin', flag: 'de.png', url: 'Europe/Berlin'),
    WorldTime(location: 'Kolkata', flag: 'in.png', url: 'Asia/Kolkata'),
    WorldTime(location: 'Cairo', flag: 'eg.png', url: 'Africa/Cairo'),
    WorldTime(location: 'Tokyo', flag: 'jp.png', url: 'Asia/Tokyo')
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    // navigate to home and pass data
    // ignore: use_build_context_synchronously
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print('build widget function ran of choose_location');
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: const Text('Choose a location'),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    updateTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
