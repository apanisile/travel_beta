import 'package:flutter/material.dart';
import 'package:test/pages/image_banner.dart';
import 'package:test/pages/maldivesPage.dart';
import 'package:test/pages/parisPage.dart';
import 'package:test/pages/spain.dart';
import 'pages/romePage.dart';
import 'pages/widgets/scaffold.dart';
import 'pages/greecePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/details': (context) => RomePage(),
        '/details/greece': (context) => GreecePage(),
        '/details/maldives': (context) => MaldivesPage(),
        '/details/paris': (context) => ParisPage(),
        '/details/spain': (context) => SpainPage(),
      }
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildEasyScaffold(
      appBarTitle: 'Travel Beta',
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ImageBanner(
                imagePath: 'places/rome.jpg',
                pagePath: '/details',
              ),
              SizedBox(
                height: 2.0,
              ),
              ImageBanner(
                imagePath: 'places/maldives.jpg',
                pagePath: '/details/maldives',
              ),
              SizedBox(
                height: 2.0,
              ),
              //paris
              ImageBanner(
                imagePath: 'places/paris.jpeg',
                pagePath: '/details/paris',
              ),

              SizedBox(
                height: 2.0,
              ),
              //seychelles
              ImageBanner(
                imagePath: 'places/sey.jpg',
                pagePath: '/details/sey',
              ),
              SizedBox(
                height: 2.0,
              ),
              //spain
              ImageBanner(
                imagePath: 'places/spain.jpeg',
                pagePath: '/details/spain',
              ),

              SizedBox(
                height: 2.0,
              ),
              //greece
              ImageBanner(
                imagePath: 'places/greece.jpg',
                pagePath: '/details/greece',
              ),
            ],
          ),
        ],
      ),
    );
  }
}


