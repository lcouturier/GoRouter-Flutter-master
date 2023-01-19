// ignore_for_file: avoid_print

import 'package:androidrouting/app/routes/app_routes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final VoidCallback? onLeaveScreen;
  const ProfileScreen({Key? key, this.onLeaveScreen}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> with GoRouterAware {
  @override
  void initState() {
    super.initState();
    _onLeaveScreen = widget.onLeaveScreen;
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Profile',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    mainObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
  }

  @override
  void dispose() {
    mainObserver.unsubscribe(this);
    super.dispose();
  }
}

mixin GoRouterAware implements RouteAware {
  late VoidCallback? _onLeaveScreen;

  void onLeaveScreen() => _onLeaveScreen?.call();

  @override
  void didPush() {
    print('*** Entering screen');
  }

  @override
  void didPushNext() {
    print('*** Leaving screen');
    onLeaveScreen();
  }

  @override
  void didPop() {
    print('*** Going back, leaving screen');
    onLeaveScreen();
  }

  @override
  void didPopNext() {
    print('*** Going back to screen');
  }
}
