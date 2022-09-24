import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


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
