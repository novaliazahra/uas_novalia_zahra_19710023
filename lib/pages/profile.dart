import 'package:flutter/material.dart';
import 'package:uas_novalia_zahra_19710023/main.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[800],
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60.0,
            backgroundImage: AssetImage('assets/img/zahra.jpg'),
          ),
          Text(
            "",
            style: TextStyle(
              fontFamily: 'Cookie',
              color: Colors.white,
              fontSize: 10,
            ),
          ),
          Text(
            "N o v a l i a   Z a h r a",
            style: TextStyle(
              fontFamily: 'Cookie',
              color: Colors.white,
              fontSize: 35,
            ),
          ),
          Text(
            "",
            style: TextStyle(
              fontFamily: 'Cookie',
              color: Colors.white,
              fontSize: 10,
            ),
          ),
          Text(
            "19710023",
            style: TextStyle(
              fontFamily: 'Track',
              color: Colors.teal[100],
              fontSize: 18,
              letterSpacing: 2.5,
            ),
          ),
          SizedBox(
            height: 50.0,
            width: 150.0,
            child: Divider(
              color: Colors.white,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.account_balance,
                color: Colors.blueGrey[600],
              ),
              title: Text(
                "KELAS  : 5A SI Reg Pagi BJM",
                style: TextStyle(
                  fontFamily: 'ComicSansMS',
                  color: Colors.blue,
                  ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.call,
                color: Colors.blueGrey[600],
              ),
              title: Text(
                "KONTAK   : 0831-4379-8682",
                style: TextStyle(
                  fontFamily: 'ComicSansMS',
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.blueGrey[600],
              ),
              title: Text(
                "ALAMAT : Jl.Desa Belayung Baru, Kertak Hanyar ",
                style: TextStyle(
                  fontFamily: 'ComicSansMS',
                  color: Colors.blue,
                  ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}