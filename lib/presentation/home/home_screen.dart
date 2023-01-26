import 'package:androidrouting/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(Routes.homeDetailsNamedPage);
      },
      child: const SizedBox(
        height: 100,
        child: Center(
          child: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
