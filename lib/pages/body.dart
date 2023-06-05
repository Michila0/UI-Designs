import 'package:flutter/material.dart';
import 'package:ui_design/pages/home_page.dart';
import 'package:ui_design/pages/product_details_page.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {


  @override
  Widget build(BuildContext context) {
    //It provides us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height*0.4),
                  padding: EdgeInsets.only(
                      top: size.height*0.10,

                  ),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(top: 325),
                    width: 80,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
