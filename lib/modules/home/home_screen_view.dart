import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_to_day/base.dart';
import 'package:weather_to_day/modules/home/home_navigator.dart';
import 'package:weather_to_day/modules/home/home_screen_view_model.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseView<HomeScreen,HomeViewModel>implements HomeNavigator {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel.navigator=this;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text('Today',style: TextStyle(fontSize: 12)),
            Text('London', style: TextStyle(fontSize: 38)),
            Text('65/65/6',style: TextStyle(fontSize: 12,color: Colors.grey),),
            SizedBox(height: 20,),
            Row(

              children: [

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(Icons.cloud,size: 50,),
              ),
              Container(color: Colors.grey,
                height: 60,
              width: 2),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text('30~',style: TextStyle(fontSize: 66),),
              )

            ],)
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel initViewModel() {
    return HomeViewModel();
  }
}
