import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_to_day/base.dart';
import 'package:weather_to_day/modules/home/home_navigator.dart';
import 'package:weather_to_day/modules/home/home_screen_view_model.dart';
import 'package:weather_to_day/modules/home/items/background_and%20type_weather.dart';
import 'package:weather_to_day/modules/home/items/list_five_days.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseView<HomeScreen, HomeViewModel>
    implements HomeNavigator {
  @override
  void initState() {
    viewModel?.navigator = this;
    HomeViewModel().getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Background_Weather();
  }

  @override
  HomeViewModel initViewModel() {
    return HomeViewModel();
  }
}
