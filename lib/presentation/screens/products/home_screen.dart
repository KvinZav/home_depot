import 'package:flutter/material.dart';
import 'package:home_depot/api/response.dart';
import 'package:home_depot/config/environments/environment.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    getJSONResponse('mock/products.json').then((value) => print(value));

    return Scaffold(
      body: Center(
        child: Text(Environment.serverBaseUrl),
      ),
    );
  }
}