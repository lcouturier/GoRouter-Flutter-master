// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeDetailsScreen extends StatelessWidget {
  final String name;
  const HomeDetailsScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
