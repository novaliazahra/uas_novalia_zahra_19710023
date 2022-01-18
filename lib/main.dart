import 'package:flutter/material.dart';
import 'package:uas_novalia_zahra_19710023/services/splash.dart';
import 'package:uas_novalia_zahra_19710023/pages/home.dart';
import 'package:uas_novalia_zahra_19710023/components/costumlist.dart';
import 'package:uas_novalia_zahra_19710023/pages/profile.dart';
import 'package:uas_novalia_zahra_19710023/model/article_model.dart';
import 'package:uas_novalia_zahra_19710023/services/api_service.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        'pageone': (BuildContext context) => new Home(),
        'pagebusiness': (BuildContext context) => new pagebusiness(),
        'pagesport': (BuildContext context) => new pagesport(),
        'profile': (BuildContext context) => new profile(),
      },
    );
  }
}

class pagebusiness extends StatefulWidget {
  @override
  homepage_business createState() => homepage_business();
}
class pagesport extends StatefulWidget {
  @override
  homepage_sport createState() => homepage_sport();
}

class homepage_business extends State<pagebusiness> {
  ApiService_business client = ApiService_business();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "business", 
            style: TextStyle(
              fontFamily: 'Track',
              color: Colors.blue[400],
              ),
            ),
          leading: Icon(Icons.menu, color:Colors.black),
          backgroundColor: Colors.grey[300],
        actions:<Widget>[ 
          Icon(Icons.more_vert, color:Colors.black)
        ],
      ),
    body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class homepage_sport extends State<pagesport> {
  ApiService_sport client = ApiService_sport();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "SPORT", 
            style: TextStyle(
              fontFamily: 'Track',
              color: Colors.blue[400],
              ),
            ),
          leading: Icon(Icons.menu, color:Colors.black),
          backgroundColor: Colors.grey[300],
        actions:<Widget>[ 
          Icon(Icons.more_vert, color:Colors.black)
        ],
      ),
    body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article> articles = snapshot.data;
            return ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) =>
                    customListTile(articles[index], context));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}