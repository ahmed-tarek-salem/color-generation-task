import 'package:flutter/material.dart';
import 'package:solid_software_task_master/models/color_generator.dart';
import 'package:solid_software_task_master/widgets/hello_text.dart';

/// The home page of the app that changes the background color on tap.
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _backgroundColor = Colors.black;

  void _changeBackgroundColor(StateSetter setState) {
    setState(() {
      _backgroundColor = ColorGenerator.generateRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return GestureDetector(
              onTap: () {
                _changeBackgroundColor(setState);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                color: _backgroundColor,
                child: const Center(child: HelloText()),
              ),
            );
          },
        ),
      ),
    );
  }
}
