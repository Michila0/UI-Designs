import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(children: [
        Row(children: const [
          Text(
            //display the name
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
