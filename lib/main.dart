import 'package:flutter/material.dart';
import 'route.dart';
import 'dasbord.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Drawer1(),
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
