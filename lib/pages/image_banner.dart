//@dart=2.9

import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String imagePath;
  final String pagePath;

  ImageBanner({this.imagePath, this.pagePath});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: GestureDetector(
          //build a page for maldives
          onTap: () => Navigator.pushNamed(context, pagePath),
          child: SizedBox(
            child: Image.asset(
              imagePath,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );

  }
}
