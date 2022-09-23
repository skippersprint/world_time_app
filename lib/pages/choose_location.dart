import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    //simulate a network request
    String user = await Future.delayed(Duration(seconds: 3), () {
      return 'Virat';
    });

    //simulate network request to get bio of the username
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'lgbt,vegan, environmentalist, leftist, marxist';
    });

    print('$user is $bio');
  }

  int counter = 0;
  @override
  void initState() {
    super.initState();
    getData();

    print('initState function ran');
  }

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
        body: ElevatedButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Text('Counter is : $counter'),
        ));
  }
}
