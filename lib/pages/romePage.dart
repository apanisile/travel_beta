import 'package:flutter/material.dart';
import 'widgets/scaffold.dart';

class RomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildEasyScaffold(
      appBarTitle: 'Detail Page',
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                child: SizedBox(
                  child: Image.asset(
                    'places/rome.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Container(
                child: RichText(
                  text: TextSpan(text: "Rome", children: const <TextSpan>[
                    TextSpan(text: '10 FUN FACTS ABOUT SPAIN YOU DIDN\'T KNOW'),
                    TextSpan(text: 'The center of Spain.'),
                    TextSpan(text: 'The first modern novel is Spanish.'),
                    TextSpan(
                        text:
                            'Around 406 million people in the world speak Spanish.'),
                    TextSpan(
                        text: 'In Spain, ​different languages are spoken.'),
                    TextSpan(
                        text: 'The highest Spanish mountain is not in Spain.'),
                    TextSpan(text: 'UNESCO\'s third largest heritage country.'),
                    TextSpan(text: 'We have chocolate thanks to the Spanish.'),
                    TextSpan(text: 'Christmas is very special in Spain.'),
                    TextSpan(text: 'The Spaniards tend to speak loudly'),
                  ]),
                  //textScaleFactor: 4.0,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
