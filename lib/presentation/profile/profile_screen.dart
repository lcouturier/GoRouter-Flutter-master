// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:lifecycle_aware_state/lifecycle_aware_state.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends LifecycleAwareState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Profile',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
