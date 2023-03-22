import 'package:flutter/material.dart';
import 'package:m3_pt1/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(place.imageAsset),
          Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Lobster',
                ),
              )),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(Icons.calendar_today),
                    Text(place.hari),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.access_time_rounded),
                    Text(place.time),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.monetization_on_rounded),
                    Text(place.cost),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              place.desk,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'Oxygen',
              ),
            ),
          ),
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(place.gmbr1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(place.gmbr2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(place.gmbr3)),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(place.gmbr4)
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
