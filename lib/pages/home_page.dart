import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Row(children: const [
          //Hi, Michila
          Text(
            ' Enjoy the world \n into Virtual reality',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              // decoration: TextDecoration.overline,
              overflow: TextOverflow.fade,

            ),
          ),
          //Notification

        ],)
      ]),
    );
  }
}
