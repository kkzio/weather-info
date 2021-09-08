import 'package:flutter/material.dart';
import 'package:weather_info/model/wather_data.dart';
import 'package:weather_info/screen/app_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }

  void getLocationData() async {
    var data = await WeatherData().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return AppScreen(
        weatherData: data,
      );
    }));
  }
}
