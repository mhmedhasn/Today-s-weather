import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_to_day/shared/constant/constant.dart';

import 'list_five_days.dart';

class Background_Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/image/background.png"),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: Icon(Icons.arrow_forward_ios, color: Colors.black),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.grey)),
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: Icon(Icons.search, color: Colors.grey),
                          hintText: '     Search for your location...',
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.only(top: 10)))),
            ),
          ),
          body:  Column(
            children: [
              Row(children: [
                Column(
                  children: [Text('18'), Text('Cloudy')],
                ),
                Image.asset('')
              ]),
              SizedBox(height: 150,),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ListItem(),
                      SizedBox(width: 8),
                      ListItem(),
                      SizedBox(width: 8),
                      ListItem(),
                      SizedBox(width: 8),
                      ListItem(),
                      SizedBox(width: 8),
                      ListItem(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
