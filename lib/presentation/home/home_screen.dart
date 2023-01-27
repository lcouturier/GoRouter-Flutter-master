// ignore_for_file: avoid_print

import 'package:androidrouting/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lifecycle_aware_state/lifecycle_aware_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends LifecycleAwareState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.homeDetailsNamedPage, params: {"name": "codemagic"}),
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

  @override
  void didPush() {
    super.didPush();
    print('didPush HomeScreen');
  }

  @override
  void didPushNext() {
    super.didPushNext();
    print('didPushNext HomeScreen');
  }

  @override
  void didPop() {
    super.didPop();
    print('didPop HomeScreen');
  }

  @override
  void didPopNext() {
    super.didPopNext();
    print('didPopNext HomeScreen');
  }
}
