import 'package:flutter/material.dart';
import 'package:test/pages/image_banner.dart';
import 'pages/romePage.dart';
import 'pages/widgets/scaffold.dart';

void main() => runApp(App0806());

class App0806 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/details': (context) => RomePage(),
        '/details/cast': (context) => CastPage(),
        '/details/reviews': (context) => ReviewsPage(),
      },
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
             ImageBanner(imagePath: 'places/maldives.jpg', pagePath: '/details',),
              SizedBox(
                height: 2.0,
              ),
              Container(
                child: GestureDetector(
                  //build a page for paris
                  onTap: () => Navigator.pushNamed(context, '/details'),
                  child: SizedBox(
                    child: Image.asset(
                      'places/paris.jpeg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
              Container(
                child: GestureDetector(
                  //build a page for sey
                  onTap: () => Navigator.pushNamed(context, '/details'),
                  child: SizedBox(
                    child: Image.asset(
                      'places/sey.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
              Container(
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/details'),
                  child: SizedBox(
                    child: Image.asset(
                      'places/spain.jpeg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
              Container(
                child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/details'),
                  child: SizedBox(
                    child: Image.asset(
                      'places/greece.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildEasyScaffold(
      appBarTitle: 'Cast Page',
      body: Container(),
    );
  }
}

class ReviewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildEasyScaffold(
      appBarTitle: 'Reviews Page',
      body: Container(),
    );
  }
}
