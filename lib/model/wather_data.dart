import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'network_helper.dart';
import 'package:weather_info/model/location.dart';

const apiKey = 'your api key';

String url = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherData {
  Future<dynamic> getLocationWeather({String units = 'metric'}) async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        url:
            '$url?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  IconData getWeatherIcon(int condition) {
    if (condition < 300) {
      return FontAwesomeIcons.bolt;
    } else if (condition < 400) {
      return FontAwesomeIcons.cloudRain;
    } else if (condition < 600) {
      return FontAwesomeIcons.cloudShowersHeavy;
    } else if (condition < 700) {
      return FontAwesomeIcons.snowflake;
    } else if (condition < 800) {
      return FontAwesomeIcons.smog;
    } else if (condition == 800) {
      return FontAwesomeIcons.sun;
    } else if (condition <= 804) {
      return FontAwesomeIcons.cloud;
    } else {
      return FontAwesomeIcons.meteor;
    }
  }

  late IconData iconData;
  late String message;

  List getMessage(int temp) {
    if (temp > 25) {
      message = 'It\'s time to get some';
      iconData = FontAwesomeIcons.coffee;
      return [message, iconData];
    } else if (temp > 20) {
      message = 'Time for shorts';
      iconData = FontAwesomeIcons.tshirt;
      return [message, iconData];
    } else if (temp < 10) {
      message = 'now is cold. You\'ll need';
      iconData = FontAwesomeIcons.mitten;
      return [message, iconData];
    } else {
      message = 'Bring a umbrella just in case';
      iconData = FontAwesomeIcons.umbrella;
      return [message, iconData];
    }
  }
}
