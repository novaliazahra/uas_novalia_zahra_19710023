import 'package:flutter/material.dart';
import 'dart:async';
import 'package:uas_novalia_zahra_19710023/main.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Heading",
          style: TextStyle(
            fontFamily: 'Track',
            color: Colors.blue[400],
          ),
        ),
        leading: Icon(Icons.menu, color: Colors.black),
        backgroundColor: Colors.grey[300],
        actions: <Widget>[
          Icon(Icons.arrow_drop_down, color:Colors.black),
          Icon(Icons.more_vert, color: Colors.black)],
      ),
      body: Container(
        padding: EdgeInsets.all(6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                IconButton(
                  icon: new Icon(
                    Icons.business_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'pagebusiness');
                  },
                  iconSize: 70.0,
                ),
                Text(
                  "business",
                  style: TextStyle(
                  fontFamily: 'ComicSansMS',
                  color: Colors.blue[400]),
                  ),
              ],
            ),

            Column(
              children: [
                IconButton(
                  icon: new Icon(Icons.sports_soccer,
                      color: Colors.black,
                      ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'pagesport');
                  },
                  iconSize: 70.0,
                ),
                Text(
                  "Sport",
                  style: TextStyle(
                  fontFamily: 'ComicSansMS',
                  color: Colors.blue[400]),
                  ),
              ],
            ),

            Column(
              children: [
                IconButton(
                  icon: new Icon(Icons.assignment_ind_outlined,
                      color: Colors.black),
                  onPressed: () {
                    Navigator.pushNamed(context, 'profile');
                  },
                  iconSize: 70.0,
                ),
                Text(
                  "Profile",
                  style: TextStyle(
                  fontFamily: 'ComicSansMS',
                  color: Colors.blue[400]),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
