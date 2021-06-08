import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'text_section.dart';
import 'widgets/scaffold.dart';

class RomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildEasyScaffold(
      appBarTitle: 'Rome',
      body: ListView(
        children: [
          Container(

            child: Center(

              child: SizedBox(
                height: 300,
                width: 500,
                child: Carousel(
                  images: [
                    ExactAssetImage("places/rome.jpg"),
                    ExactAssetImage("places/greece.jpg"),
                    ExactAssetImage("places/maldives.jpg"),
                  ],
                  autoplay: false,
                  animationDuration: Duration(milliseconds: 1000),
                  dotSize: 6.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.lightGreenAccent,
                  //borderRadius: true,
                  boxFit: BoxFit.cover,

                ),
              ),
            ),
          ),
          TextSection('FUN FACTS ABOUT SPAIN YOU DIDN\'T KNOW',
              'The center of Spain.\n The first modern novel is Spanish.\n Around 406 million people in the world speak Spanish. \n In Spain, different languages are spoken. \n The highest Spanish mountain is not in Spain. \n UNESCO\'s third largest heritage country. \n We have chocolate thanks to the Spanish. \n Christmas is very special in Spain. \n The Spaniards tend to speak loudly'),
        ],
      ),
    );
  }
}
