// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeDetailsScreen extends StatelessWidget {
  const HomeDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Home Details',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
