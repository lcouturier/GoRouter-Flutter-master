// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lifecycle_aware_state/lifecycle_aware_state.dart';

class HomeDetailsScreen extends StatefulWidget {
  final String name;
  const HomeDetailsScreen({Key? key, required this.name}) : super(key: key);

  @override
  State<HomeDetailsScreen> createState() => _HomeDetailsScreenState();
}

class _HomeDetailsScreenState extends LifecycleAwareState<HomeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pop(),
      child: SizedBox(
        height: 100,
        child: Center(
          child: Text(
            widget.name,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   myObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
  // }

  // @override
  // void dispose() {
  //   myObserver.unsubscribe(this);
  //   super.dispose();
  // }

  @override
  void didPush() {
    super.didPush();
    print('didPush HomeDetailsScreen');
  }

  @override
  void didPushNext() {
    super.didPushNext();
    print('didPushNext HomeDetailsScreen');
  }

  @override
  void didPop() {
    super.didPop();
    print('didPop HomeDetailsScreen');
  }

  @override
  void didPopNext() {
    super.didPopNext();
    print('didPopNext HomeDetailsScreen');
  }
}
