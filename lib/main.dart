import 'package:flutter/material.dart';

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
    return _buildEasyScaffold(
      appBarTitle: 'Home Page',
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              InkWell(
                child: Container(
                  child: GestureDetector(
                    //build a page for rome
                    onTap: () => Navigator.pushNamed(context, '/details'),
                    child: SizedBox(
                      child: Image.asset(
                        'places/rome.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
              Container(
                child: GestureDetector(
                  //build a page for maldives
                  onTap: () => Navigator.pushNamed(context, '/details/reviews'),
                  child: SizedBox(
                    child: Image.asset(
                      'places/maldives.jpg',
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

class RomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildEasyScaffold(
      appBarTitle: 'Detail Page',
      body: Column(
        children: [
          Container(
            child: SizedBox(
              child: Image.asset(
                'places/rome.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(child: ,)
        ],
      ),
    );
  }
}

class CastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildEasyScaffold(
      appBarTitle: 'Cast Page',
      body: Container(),
    );
  }
}

class ReviewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildEasyScaffold(
      appBarTitle: 'Reviews Page',
      body: Container(),
    );
  }
}

Widget _buildEasyScaffold({var appBarTitle, var body}) {
  return Scaffold(
    appBar: AppBar(
      title: Text(appBarTitle),
    ),
    body: body,
  );
}

Widget _buildEasyButton(
  BuildContext context, {
  var label,
  var whichRoute,
}) {
  return RaisedButton(
    child: Text(label),
    onPressed: () {
      Navigator.pushNamed(
        context,
        whichRoute,
      );
    },
  );
}
