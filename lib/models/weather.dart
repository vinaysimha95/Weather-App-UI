import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

enum EachDay {
  Monday,
  Tuesday,
  Wednesdsy,
  Thursday,
  Friday,
  Saturday,
  Sunday,
}

class Weather {
  String country;
  String city;
  CityWeather cityWeather;

  Weather({
    this.country,
    this.cityWeather,
  });

  String get getCountry {
    return country;
  }

    CityWeather get getCityWeather {
      return cityWeather;
    }
}

class CityWeather {
  int temperature;
  int precipitation;
  int rainfall;
  double windSpeed;
  List<HourlyWeather> todayHourlyWeather;
  List<HourlyWeather> tomorrowHourlyWeather;
  List<WeeklyWeather> weeklyWeather;

  CityWeather({
    @required this.temperature,
    @required this.precipitation,
    @required this.rainfall,
    @required this.windSpeed,
    @required this.todayHourlyWeather,
    @required this.tomorrowHourlyWeather,
    @required this.weeklyWeather,
  });

  int get getTemperature {
    return temperature;
  }
  int get getPrecipitation {
    return precipitation;
  }
  int get getRainfall {
    return rainfall;
  }
  double get getWindSpeed {
    return windSpeed;
  }
  List<HourlyWeather> get getTodayHourlyWeather {
    return todayHourlyWeather;
  }
  List<HourlyWeather> get getTomorrowHourlyWeather {
    return tomorrowHourlyWeather;
  }
  List<WeeklyWeather> get getWeeklyWeather {
    return weeklyWeather;
  }
}

class HourlyWeather {
  int hour;
  int temperature;
  IconData icon;

  HourlyWeather({
    @required this.hour,
    @required this.temperature,
    @required this.icon,
  });

  int get getHour {
    return hour;
  }
  int get getTemperature {
    return temperature;
  }
  IconData get getIcon {
    return icon;
  }
}

class WeeklyWeather {
  EachDay day;
  int temperature;

  WeeklyWeather({
    @required this.day,
    @required this.temperature,
  });

  EachDay get getDay {
    return day;
  }
  int get getTemperature {
    return temperature;
  }
}

List<HourlyWeather> todayHourlyWeather = [
  HourlyWeather(hour: 7, temperature: 11, icon: WeatherIcons.cloud),
  HourlyWeather(hour: 8, temperature: 12, icon: WeatherIcons.rain),
  HourlyWeather(hour: 9, temperature: 12, icon: WeatherIcons.day_sunny),
  HourlyWeather(hour: 10, temperature: 13, icon: WeatherIcons.day_cloudy_windy),
  HourlyWeather(hour: 11, temperature: 12, icon: WeatherIcons.day_snow_thunderstorm),
  HourlyWeather(hour: 12, temperature: 12, icon: WeatherIcons.cloud),
];

List<HourlyWeather> tomorrowHourlyWeather = [
  HourlyWeather(hour: 7, temperature: 11, icon: WeatherIcons.cloud),
  HourlyWeather(hour: 8, temperature: 12, icon: WeatherIcons.rain),
  HourlyWeather(hour: 9, temperature: 13, icon: WeatherIcons.day_sunny),
  HourlyWeather(hour: 10, temperature: 11, icon: WeatherIcons.day_cloudy_windy),
  HourlyWeather(hour: 11, temperature: 12, icon: WeatherIcons.day_snow_thunderstorm),
  HourlyWeather(hour: 12, temperature: 12, icon: WeatherIcons.cloud),
];
List<WeeklyWeather> weeklyWeather = [
  WeeklyWeather(day: EachDay.Monday, temperature: 11),
  WeeklyWeather(day: EachDay.Tuesday, temperature: 12),
  WeeklyWeather(day: EachDay.Wednesdsy, temperature: 12),
  WeeklyWeather(day: EachDay.Thursday, temperature: 13),
  WeeklyWeather(day: EachDay.Friday, temperature: 11),
  WeeklyWeather(day: EachDay.Saturday, temperature: 12),
  WeeklyWeather(day: EachDay.Sunday, temperature: 12),
];

CityWeather cityWeather = CityWeather(
  temperature: 12,
  precipitation: 70,
  rainfall: 31,
  windSpeed: 4.2,
  todayHourlyWeather: todayHourlyWeather,
  tomorrowHourlyWeather: tomorrowHourlyWeather,
  weeklyWeather: weeklyWeather,
);

Weather weather = Weather(
  country: 'United Kingdom',
  cityWeather: cityWeather,
);