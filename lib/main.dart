import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

import './models/weather.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  String searchedCity = 'London';

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(34, 51, 94, 1),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.1,
              right: MediaQuery.of(context).size.width * 0.2,
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
              color: Color.fromRGBO(34, 51, 94, 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  searchedCity,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  weather.getCountry,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          WeatherIcons.day_cloudy,
                          color: Colors.white,
                          size: 70.0,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Text(
                      ' ${weather.getCityWeather.getTemperature}°C',
                      style: TextStyle(color: Colors.white, fontSize: 70),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 120,
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        WeatherIcons.raindrop,
                        size: 30,
                        color: Color.fromRGBO(34, 51, 94, 1).withOpacity(0.8),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${weather.getCityWeather.getPrecipitation} %',
                        style: TextStyle(
                            color: Color.fromRGBO(34, 51, 94, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        WeatherIcons.umbrella,
                        size: 30,
                        color: Color.fromRGBO(34, 51, 94, 1).withOpacity(0.8),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${weather.getCityWeather.getRainfall} mm',
                        style: TextStyle(
                            color: Color.fromRGBO(34, 51, 94, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        WeatherIcons.sandstorm,
                        size: 30,
                        color: Color.fromRGBO(34, 51, 94, 1).withOpacity(0.8),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${weather.getCityWeather.getWindSpeed} mph',
                        style: TextStyle(
                            color: Color.fromRGBO(34, 51, 94, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 170,
            color: Color.fromRGBO(245, 245, 245, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '8:10 AM',
                  style: TextStyle(
                      fontSize: 45,
                      color: Color.fromRGBO(34, 51, 94, 1),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Sat, 6 Aug',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromRGBO(34, 51, 94, 1),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Color.fromRGBO(235, 241, 255, 1),
              ),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Today',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Tomorrow',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 225,
            color: Color.fromRGBO(245, 245, 245, 1),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: weather.getCityWeather.getTodayHourlyWeather.length,
              itemBuilder: (_, i) {
                return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Container(
        width: 85,
        margin: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(34, 51, 94, 1),
        ),
        child: InfoWidget(i: i,),
      ),
    ); 
              },
            ),
          ),
        ],
      ),
    );
  }
}


class InfoWidget extends StatelessWidget {
  final int i;

  InfoWidget({this.i});
  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              '${weather.getCityWeather.getTodayHourlyWeather[i].getHour}AM',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Icon(
              weather.getCityWeather.getTodayHourlyWeather[i].getIcon,
              color: Colors.white,
              size: 30,
            ),
            Text(
              '${weather.getCityWeather.getTodayHourlyWeather[i].getTemperature}°C',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
    );
  }
}