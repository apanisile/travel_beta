import 'package:flutter/material.dart';

Widget buildEasyScaffold({var appBarTitle, var body}) {
  return Scaffold(
    appBar: AppBar(
      title: Text(appBarTitle),
    ),
    body: body,
  );
}
